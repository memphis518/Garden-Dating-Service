module Authentication

  module Model

    def self.included base
      class << base
        attr_reader :login_field
      end

      base.extend ClassMethods
      base.send :include, InstanceMethods

      base.send :validates_with_method, :validate_password
      base.send :before, :valid?, :encrypt_password
      base.send :login_with, :email
    end

    module ClassMethods
      # Set the field name to use for authentication
      # Accepts a string or a symbol of a property name
      def login_with field
        field = field.is_a?(Symbol) ? field : field.fieldify.to_sym

        new.respond_to?(field) ? @login_field = field : raise("#{name} does not respond to #{ field.inspect }")
      end

      # Search the login_field for the given value and
      # attempt to authenticate a found user with the given password
      def authenticate login, provided_password = nil
        user = self.first login_field => login

        (user.present? and user.authenticated_by?provided_password) ? user : nil
      end

    end

    module InstanceMethods

      # Compare provided password with the one stored in the database
      def authenticated_by? provided_password
        encrypted_password == Digest::SHA1.hexdigest(provided_password + password_salt)
      end

    private

      # Hash the provided password and persist it, along with a salt
      def encrypt_password
        return true if password.blank?
        self.password_salt      = "make_this_more_better_#{ Time.now.to_i }"
        self.encrypted_password = Digest::SHA1.hexdigest(password + password_salt)
        true
      end

      # Ensure that if a password has not been persisted one is provided
      # Ensure that provided passwords are at least 4 characters long
      def validate_password
        if password.present?
          errors.add :password, 'must be at least 4 characters!' unless password.length > 4
        else
          errors.add :password, 'is required!' unless encrypted_password.present?
        end

        true
      end

    end

  end

end
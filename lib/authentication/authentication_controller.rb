module Authentication

  module Controller

    def self.included base
      base.send :helper_method, :current_user, :logged_in?
      base.send :include, InstanceMethods
      base.send :layout, lambda { |controller| controller.ajax? ? nil : 'application' }
      # base.send :before_filter, :set_thread_user
    end

    module InstanceMethods

      def ajax?
        request.xhr?
      end

    private

      def current_user
        @current_user ||= User.first :id => session[:user_id]
      end

      def logged_in?
        !!current_user
      end

      def store_location
        session[:return_to] = request.request_uri
      end

      def redirect_back_or_default default = nil
        default ||= root_path
        redirect_to session[:return_to] || default
        session[:return_to] = nil
      end

      def access_denied
        store_location
        flash[:error] = 'You do not have permission to access that page!'
        redirect_to login_path
      end

      def login_required
        access_denied unless logged_in?
      end

      # Uncomment for basic role support
      # add support for dynamic role filtering
      # eg accountant_required or receiving_staff_or_accountant_required
      # def method_missing name, *args
      #   if name.to_s =~ /^(.+)_required$/
      #     system_admin_or_role_required $1.split('_or_')
      #   else
      #     super
      #   end
      # end

      # Uncomment for basic role support
      # def system_admin_or_role_required role
      #   raise "Role must be specified" if role.blank?
      #   return if logged_in? and current_user.is_a?('System Admin')
      #   roles = role.is_a?(Array) ? role : [role].flatten
      #   access_denied unless logged_in? and roles.map { |r| current_user.is_a?(r.to_s.titleize) }.include? true
      # end

      # def set_thread_user
      #   Thread.current[:user] = current_user
      # end

    end

  end

end

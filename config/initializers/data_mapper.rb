class Dictionary #:nodoc:
  alias count size
end

module DataMapper::Resource #:nodoc:

  def self.included_with_patching base
    included_without_patching base
    base.class_eval do
      before :valid?, :fix_empty_strings
    end
  end

  class << self
    alias_method_chain :included, :patching
  end

  alias new_record? new?

  def to_param
    key = self.key
    key.to_s if key.size == 1
  end

private

  # TODO: Test this
  #
  # this attempts to catch formatted_TIME_FIELD and return a prettified string
  # Note: define a strftime_string in your model!
  #
  def method_missing name, *args
    if name.to_s =~ /^formatted_(.+)$/ and respond_to?($1)
      value = send $1
      return value.respond_to?(:strftime) ? value.strftime(strftime_string) : value
    end

    super
  end

  # This method changes all empty strings to nil before update.
  # NOTE: If the field is required, sending an empty string will cause it to be invalid.
  def fix_empty_strings
    properties.each { |p| self.send("#{p.name}=", nil) if self.send(p.name) == '' }
  end

end

module DataMapper #:nodoc:

  class Property #:nodoc:

    def typecast_to_date_with_empty_strings value
      return nil if value == ''
      typecast_to_date_without_empty_strings value
    end

    alias_method_chain :typecast_to_date, :empty_strings
  end

end

# some wonkiness to make things like child.parent_id work the way they should
Dir.glob( File.join RAILS_ROOT, 'app', 'models', '*.rb' ).each { |fn| require fn[0...-3] }
DataMapper::Model.descendants.each { |m| m.relationships.each_value { |r| r.child_key } }

# Enable Logging for DataMapper
# FIXME: I haven't figured out how to set the logger more dynamically yet, but it works
log_file  = File.join Rails.root, 'log', "#{ Rails.env }.log"
log_level = Rails.env == 'production' ? :off : :debug
DataObjects::Sqlite3.logger = DataObjects::Logger.new(log_file, log_level) if RAILS_ENV == 'development'

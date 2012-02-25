def fill_in_fields *args
  raise "Too many arguments!" if args.count > 2

  prefix = args.first.is_a?(String) ? "#{args.shift}_" : ''
  input = args.last || {}

  input.each do |field, value|
    field_name = prefix + field.to_s
    fill_in field_name, :with => value
  end
end

def should_be_on path
  URI.parse(current_url).path.should == path
end

def should_not_be_on path
  URI.parse(current_url).path.should_not == path
end

def there_should_be count, klass
  klass.send(:count).should == count
end

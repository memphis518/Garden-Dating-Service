require File.dirname(__FILE__) + '/../spec_helper'

class Resourceful

  include DataMapper::Resource

  property :id,      Serial
  property :integer, Integer
  property :float,   Float
  property :string,  String
  property :text,    Text
  property :date,    Date

end

describe Resourceful, '#fix_numeric_values' do

  it 'sets empty strings to nil' do
    object = Resourceful.new :integer => '', :float => '', :string => '', :text => ''
    object.valid?
    object.integer.should == nil
    object.float.should   == nil
    object.string.should  == nil
    object.text.should    == nil
  end

end

describe Resourceful, '#typecast_to_date' do

  it 'sets empty dates to nil' do
    object = Resourceful.new :date => ''
    object.date.should    == nil
  end

end

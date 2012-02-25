require File.dirname(__FILE__) + '/../spec_helper'

describe 'Factories' do

  Factory.factories.keys.each do |factory_name|

    it "#{ factory_name.to_s.titleize } should generate properly" do
      3.times { factory_name.gen.should be_valid }
    end

  end

end
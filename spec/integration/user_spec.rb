require File.dirname(__FILE__) + '/../spec_helper'

describe 'Users' do

  it 'can register' do
    visit register_path

    fill_in_fields 'user', :email            => 'bob@testing.com',
                           :password         => 'password'

    click_button 'Register'

    response.body.should include('Registration Successful!')
    User.count.should == 1
  end

end

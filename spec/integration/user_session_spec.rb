require File.dirname(__FILE__) + '/../spec_helper'

describe User do

  it 'can log in as an existing user with the correct password' do
    u = User.gen :email => 'bob@example.com', :password => 'password'

    visit login_path

    fill_in_fields :login    => u.email,
                   :password => u.password

    click_button 'Login'

    response.body.should include('Logged in successfully!')
    session[:user_id].should == u.id
  end

  it 'cannot log in as an existing user without the correct password' do
    u = User.gen :email => 'bob@example.com', :password => 'password'

    visit login_path

    fill_in_fields :login    => u.email,
                   :password => 'not the password'

    click_button 'Login'
    response.body.should_not include('Logged in successfully!')
    session[:user_id].should == nil

    response.body.should     include('Unable to log you in!')
  end

  it 'can log out if logged in' do
    login_as User.gen

    visit logout_path
    response.body.should include('Logged out successfully!')

    session[:user_id].should == nil
  end

  it 'going to /logout while not logged in does not cause an error' do
    visit logout_path
    response.body.should_not include('Logged out successfully!')
    session[:user_id].should == nil
    should_be_on root_path
  end

end

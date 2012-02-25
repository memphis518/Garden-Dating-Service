require File.dirname(__FILE__) + '/../spec_helper'

describe ApplicationController, '#current_user' do

  it 'returns the user specified by session[:user_id]' do
    u = User.gen
    login_as u

    @controller.send(:current_user).should == u
  end

  it 'returns nil if there is session[:user_id] is nil' do
    visit root_path
    @controller.send(:current_user).should == nil
  end

end

describe ApplicationController, '#logged_in?' do

  it 'returns true if current user is set' do
    u = User.gen
    login_as u

    @controller.send(:logged_in?).should == true
  end

  it 'returns false if current user is not set' do
    visit root_path
    @controller.send(:logged_in?).should == false
  end

end

describe ApplicationController, '#store_location' do

  it 'saves the current location into the session' do
    visit login_path
    session[:return_to].should == nil
    @controller.send :store_location
    session[:return_to].should == login_path
  end

end

describe ApplicationController, '#redirect_back_or_default' do

  it 'redirects back to the root path if session[:return_to] and default are not set' do
    visit login_path
    @controller.should_receive(:redirect_to).with(root_path)
    @controller.send(:redirect_back_or_default)
  end

  it 'redirects back to the default if set, and session[:return_to] is not set' do
    visit root_path
    @controller.should_receive(:redirect_to).with(login_path)
    @controller.send(:redirect_back_or_default, login_path)
  end

  it 'redirects back to the session[:return_to] if set' do
    visit login_path
    @controller.send :store_location
    @controller.should_receive(:redirect_to).with(login_path)
    @controller.send(:redirect_back_or_default)
  end

end

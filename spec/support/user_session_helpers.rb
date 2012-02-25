def login_as user
  visit login_path
  fill_in_fields :login => user.email, :password => user.password
  click_button 'Login'
  @controller.send(:logged_in?).should == true
end

def logout
  visit logout_path
end

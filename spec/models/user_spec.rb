require File.dirname(__FILE__) + '/../spec_helper'

describe User do

  it 'requires a unique email' do
    User.gen(:email =>               nil).should_not be_valid
    User.gen(:email => 'bob@example.com').should     be_valid
    User.gen(:email => 'bob@example.com').should_not be_valid
    User.gen(:email => 'tom@example.com').should     be_valid
  end

  it 'requires an encrypted_password and salt' do
    u = User.new :email => 'bob@example.com'
    u.should_not be_valid
    u.errors.on(:encrypted_password).should include('Encrypted password must not be blank')
    u.errors.on(:password_salt).should      include('Password salt must not be blank')
  end

end

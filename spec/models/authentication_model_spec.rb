require File.dirname(__FILE__) + '/../spec_helper'

class AuthenticatedClass

  include DataMapper::Resource

  property :id,                 Serial
  property :email,              String, :required => true, :unique => true
  property :encrypted_password, String, :required => true
  property :password_salt,      String, :required => true

  attr_accessor :password

  include Authentication::Model

end

DataMapper.auto_migrate!

Factory.define :authenticated_class do |o|
  o.email    { "user_#{ :number.next }@example.com" }
  o.password 'testing'
end

describe AuthenticatedClass, 'log in field' do

  it 'defaults to :email' do
    AuthenticatedClass.login_field.should == :email
  end

  it 'allows setting login field to any property of the class' do
    AuthenticatedClass.login_field.should == :email
    AuthenticatedClass.login_with :id
    AuthenticatedClass.login_field.should == :id
  end

  it 'raises an error if an invalid property is assigned' do
    lambda { AuthenticatedClass.login_with :login }.should raise_error('AuthenticatedClass does not respond to :login')
  end

end

describe AuthenticatedClass, 'password' do

  it 'must be set if there is not an encrypted password' do
    u = AuthenticatedClass.new
    u.should_not be_valid
    u.errors.on(:password).should include('is required!')
  end

  it 'must be > 4 characters long' do
    u = AuthenticatedClass.new :password => 'foo'
    u.should_not be_valid
    u.errors.on(:password).should include('must be at least 4 characters!')
  end

end

describe AuthenticatedClass, 'encrypt_password' do

  it 'hashes a password and sets the password_salt' do
    u = AuthenticatedClass.new
    u.password = 'testing'
    u.encrypted_password.should be_blank

    u.send :encrypt_password

    u.encrypted_password.should_not be_blank
    u.encrypted_password.should_not == 'testing'
    u.password_salt.should_not      be_blank
  end

  it 'is called before valid? if password is set' do
    u = AuthenticatedClass.new :email => 'bob@testing.com', :password => 'password'
    u.encrypted_password.should be_blank
    u.should be_valid
    u.encrypted_password.should_not be_blank
  end

end

describe AuthenticatedClass, 'authentication' do

  before :all do
    AuthenticatedClass.login_with :email
  end

  it 'returns nil unless a user is found' do
    AuthenticatedClass.authenticate('steve@moo.cow', 'password').should be_nil
  end

  it 'returns nil if a user is found, but cannot be authenticated' do
    :authenticated_class.gen :email => 'steve@moo.cow', :password => 'testing'
    AuthenticatedClass.authenticate('steve@moo.cow', 'password').should be_nil
  end

  it 'returns the user if a user is found and can be authenticated' do
    u = :authenticated_class.gen :email => 'steve@moo.cow', :password => 'password'
    AuthenticatedClass.authenticate('steve@moo.cow', 'password').should == u
  end

  # this seems a tad redundant
  it 'compares the given password with the encrypted password' do
    u = :authenticated_class.gen :email => 'steve@moo.cow', :password => 'password'
    u.should_not be_authenticated_by 'foo'
    u.should     be_authenticated_by 'password'
  end

end

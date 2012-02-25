require 'digest/sha1'

class User
  include DataMapper::Resource

  property :id,                 Serial
  property :email,              String, :required => true, :unique => true
  property :encrypted_password, String, :required => true
  property :password_salt,      String, :required => true

  attr_accessor :password

  include Authentication::Model
  login_with :email

end

DataMapper.auto_migrate!
# put seed data here

User.create :email => 'admin@testing.com', :password => 'password'

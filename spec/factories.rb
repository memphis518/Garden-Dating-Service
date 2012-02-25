require 'factory_girl'
require 'factory_girl_extensions'

Factory.sequence(:number) {|n| n}

Factory.define :user do |o|
  o.email    { "user_#{ :number.next }@example.com" }
  o.password 'testing'
end

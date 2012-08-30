class Invitation
  include Mongoid::Document
	belongs_to :user
   	belongs_to :garden
	field :accepted,          :type => Boolean    
end  
  
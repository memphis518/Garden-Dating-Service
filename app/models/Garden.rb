class Garden
  include DataMapper::Resource

  property :id,           Serial   
  property :name,         String    
  property :description,  Text      
  property :address,      Text      
  property :zipcode,      String
  property :longitude,    Decimal   
  property :latitude,     Decimal   
  property :totalplots,   Integer   
  property :availplots,   Integer   
  property :contactinfo,  Text
  property :plotsize,     Text
  property :startdate,    DateTime
  property :plotrental,   Text
  property :workhours,    Text
  property :workdays,     Text
  property :wishlist,     Text
  property :adminitiesforclasses, Text
  property :created_date, DateTime
   
end

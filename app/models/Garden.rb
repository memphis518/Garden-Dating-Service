class Garden
  include Mongoid::Document
   field :name,          :type => String    
   field :description,   :type => String      
   field :address,       :type => String        
   field :postalcode,    :type => String
   field :coordinates,   :type => Array   
   field :totalplots,    :type => Integer   
   field :availplots,    :type => Integer   
   field :contactinfo,   :type => String
   field :plotsize,      :type => String
   field :startdate,     :type => DateTime
   field :plotrental,    :type => String
   field :workhours,     :type => String
   field :workdays,      :type => String
   field :wishlist,      :type => String
   field :adminitiesforclasses,  :type => String
   field :created_date,  :type => DateTime

   index [[ :coordinates, Mongo::GEO2D ]]
 
   def fulladdress
        self.address + " " + self.postalcode
   end
 
   include Geocoder::Model::Mongoid
    geocoded_by :fulladdress
    after_validation :geocode
end

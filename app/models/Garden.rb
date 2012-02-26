class Garden
  include Mongoid::Document
   field :name,          :type => String    
   field :description,   :type => String      
   field :address,       :type => String        
   field :postalcode,    :type => String
   field :location,      :type => Array   
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

   index [[ :location, Mongo::GEO2D ]]
end

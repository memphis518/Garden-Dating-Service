# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

gardens = Garden.create([
	{ :name => 'Alamo Community Garden', 
		:address => '2101 Alamo St.',
		:zipcode => '78722',
		:description => 'Originally an educational garden for youth, Alamo Community Garden now is home to both adults and children.  The garden features 13 200-sq. ft. and 20 100-sq. ft. garden plots, a horticultural therapy bed built at wheelchair height, a composting station, a rainwater collection system, a raised deck meeting area, and purple martin house and bat houses.',
		:totalplots => 29,
		:availableplots => 1,
		:location => [ -97.719688, 30.282124 ]
		},
	{ :name => 'Blackshear Community Garden ', 
		:address => '2011 E. 9th St.',
		:zipcode => '78702',
		:description => 'Blackshear Neighborhood is a small garden nestled in a central neighborhood and serves as a focal point for people who live nearby.  The garden has 9 plots, community rows, a small orchard, shed, chicken coop, 2500 gallon rainwater collection tank, and patio with firepit for gatherings and potlucks.  Blackshear is on City land that the Watershed Department owns because of a storm water pipe installed to prevent flooding. Established in 2008, both Blackshear and Homewood Height Community Gardens were the first community gardens to be started on City of Austin land in 10 years.',
		:totalplots => 29,
		:availableplots => 1,
		:location => [ -97.719612, 30.263756 ]
		},
	{ :name => 'Clarksville Garden', 
		:address => '1705 Waterston St.',
		:zipcode => '78703',
		:description => 'The Clarksville Community Garden, an organic garden, is a project of the Clarksville community and the Clarksville Community Development Corporation and is located on a site leased by the CCDC from the Austin Parks Department.',
		:totalplots => 29,
		:availableplots => 1,
		:location => [ -97.761421, 30.281971 ]
		},
	{ :name => 'Co-Lab Community Garden', 
		:address => '613 Allen St.',
		:zipcode => '78702',
		:description => 'Co-Lab is  home to a free community garden and various workshops, which serve as a forum for exchange, growth, sustainability, and a community center that allows the visual arts to reach out and engage local residents.',
		:totalplots => 29,
		:availableplots => 1,
		:location => [ -97.704605, 30.256397 ]
		}	

])

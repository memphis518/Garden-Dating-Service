Feature: Search for Gardens
In order to find good gardens
As an anonymous
I want to be able to view a list or map of gardens filtered by location and availability

	Scenario: Looking for a Garden
		Given a zip code or address
		When I submit my location
		Then I am provided with a list of gardens sorted proximity
		
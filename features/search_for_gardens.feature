Feature: Search for Gardens
In order to find good gardens
As an anonymous
I want to be able to view a list or map of gardens filtered by location and availability

Scenario: Looking for a 
Given I am on the search page
When I search for a garden by zip  or specific address
Then I am provided with a list of gardens sorted by proximity
		
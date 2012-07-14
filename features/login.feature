Feature: Login
In order to be authenticated
As a Gardener
I want to enter my login information and be authenticated

Scenario: authenticate
Given I am login page
When I enter a valid username and password
Then I am taken to the main logged page	
	
Given I am login page
When I enter a invalid username and password
Then I see an error page
	
	
Given I have tried to express interest but am not logged in so I am on login page
When I enter a valid username and password
Then I am taken back to the express interest page

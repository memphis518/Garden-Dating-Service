Feature: Login
In order to be authenticated
As a Gardener
I want to enter my login information and be authenticated

	Scenario: authenticate
	Given a username and password
	When a password is correct
	Then the user can access protected features
	
	
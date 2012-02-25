Feature: Register as a Gardener
In order to sign up as a gardener
As an anonymous user
I want to Enter my information and be registered.

	Scenario: Register
		Given a username
		And a password 
		And a password confirmation
		When I submit my information
		Then a new user profile is created

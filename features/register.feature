Feature: Register as a Gardener
In order to sign up as a gardener
As an anonymous user
I want to Enter my information and be 

Scenario: Register		
Given I am on the registration page
When I enter a username and password 
And I submit my information
Then a new user profile is created
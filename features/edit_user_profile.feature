Feature: User Profile
In order to public identify gardeners to other people data is displayed
As a Gardener
I want to be able to update the public information about myself

Scenario: Update/Enter user profile
Given I am on the profile page
When I edit my profile
Then the profile will be updated
And I will see a notification that the profile has been updated  
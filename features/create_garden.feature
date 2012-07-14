Feature: Create Garden
In order to add a garden to the app
As a Gardener I want to:
Create a new garden with properties XYZ

Scenario: Create a garden
Given I am on the create garden page
When valid name and XYZ settings are submitted
Then Sys Admin is notified
And I  see a confirmation page saying the garden was created

Given I am on the create garden page
When invalid name and XYZ settings are submitted
Then I see an error message and populated form




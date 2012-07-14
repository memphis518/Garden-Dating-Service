Feature: Express Interest
In order to express interest in a garden
As a Gardener
I want to be able to click a button to express interest in a garden

Scenario: Express Interest in a garden 
Given I am on express interest page
When I enter why i am interested and submit
Then the garden manager is notified
And I am taken to confirmation page that shows the interest was expressed
 
Feature: modify garden information 
In order to manage how the garden appears to gardeners
As a Manager 
I want to be able to change the XYZ properties of the garden

Scenario: Modify Garden
Given: I am on the garden management page
When I change the XYZ properties of the garden
Then the properties will be updated
And notifications will be sent to Manager and garden followers
And I will see a confirmation that the garden has been updated
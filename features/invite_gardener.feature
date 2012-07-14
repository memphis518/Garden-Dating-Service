Feature: Invite Gardener
In order to Manage membership of my gardens
As a Manager
I want to View a list of gardeners interested in my gardens and invite one.

Scenario: Invite gardener to join garden
Given: I am on the  Garden Management page
When: I invite a gardener
Then the plot is put on hold
And the gardener is notified
And I will see a confirmation page that the invitation was approved 
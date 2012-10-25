Feature: Unassign a garden plot 
In order to clear out the slackers and/or deceased
As a Manager
I want to be able to remove a gardener from a specific garden 
(change the plot assigned to the gardener???)

Scenario: Unassign a garden plot 
Given I am on the Garden Management page
When I unassign a garden plot from a gardener
Then the plot is freed up
And notification is sent to gardener and garden manager
And I see notification that the garden_plot has been unassigned

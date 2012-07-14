Feature: Cancel an invitation
In order to cancel invitations that have not been acted upon in a timely manner
as a Garden Manager
I want to cancel an invitation

Scenario: Cancel invitation
Given I am on Garden Management Page
When I cancel an invitation
Then the plot is freed up
And the gardener is notified
And the garden manager is notified
And I see a confirmation page showing the invitation has been canceled

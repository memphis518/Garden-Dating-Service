Feature: Accept Invitation
In order to confirm or deny my membership in a particular garden
As a Gardener
I want to be able to view an invitation and accept or decline it.

Scenario: Accept Invitation
Given: I am on accept/reject invitation page
When I accept invitation
Then I am associated with garden 
And plot on hold is matched to me
And notices are sent to garden Manager and Gardener
And I see a confirmation saying I have accepted


Scenario: Decline Invitation
Given: I am on accept/reject invitation page
When I decline invitation
Then the plot is freed up
And Garden Manager is notified
And I see a confirmation page saying I declined

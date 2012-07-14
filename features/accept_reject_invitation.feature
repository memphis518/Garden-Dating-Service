Feature: Accept Invitation
In order to confirm or deny my membership in a particular garden
As a Gardener
I want to be able to view an invitation and accept or decline it.

Background:
	Given I am authorized as a gardener
	And there is a garden with an open plot
	And I have an open invitation from that garden
	

Scenario: Accept Invitation
Given I am on accept/reject invitation page
When I accept invitation
Then I am associated with garden
And plot on hold is matched to me
And notices are sent to Garden Manager and Gardener
And I see a confirmation saying I have accepted


Scenario: Decline Invitation
Given I am on accept/reject invitation page
When I decline invitation
Then the status of the invitation becomes declined
And Garden Manager is notified
And I see a confirmation page saying I declined

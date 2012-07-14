Feature: Approve Gardens
In Order to approve new garden
As a System Admin
I want to approve and published a pending garden 

Scenario: Approve a pending Garden
Given On System Management page
When I approve a new garden
Then: Garden is approved
And notification is sent
AND I see a confirmation that garden is approved

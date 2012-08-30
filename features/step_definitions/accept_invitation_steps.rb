Given /^I am on accept\/reject invitation page$/ do
  # visit page. show_invitation_path set up in /config/routes
	visit invitation_path(@invitation)
end

When /^I accept invitation$/ do
  # accept invitation
  invitationaccepted = true
end

Then /^I am associated with garden$/ do
	# associate user with garden
	
end
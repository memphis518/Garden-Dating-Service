Given /^I have an open invitation from that garden$/ do
	#add invitation object with link to user and garden
	@invitation = create(:invitation)
	@invitation.user = @user
	@invitation.garden = @garden
	
end

Given /^there is a garden with an open plot$/ do
	# create garden in an instance variable (@)
	@garden = create(:garden)
	# add an open plot to garden	
	@garden.availplots = 1
end
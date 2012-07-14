Feature: View interested Gardeners
In Order to determine good matches for my garden
As a Manager
I want to View a list (or map) of Gardeners who have expressed interest in one of my gardens, with contact information, ordered by Date, Proximity, etc


Scenario: View Interested Gardeners
Given: I am on the Garden Management Page
When I view interested gardeners
Then I see a list/map of gardeners sorted by date, proximity, etc
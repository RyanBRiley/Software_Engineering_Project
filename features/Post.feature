Feature: A user can post to their profile

Scenario: Making the first post
	Given a logged in user
	And I am on the GameBook homepage
	When I fill in "Update your status" with "Hello World"
	And I press "Submit Post"
	Then I should see "post sent"
	When I follow "view profile"
	Then I should see "Hello World"
	

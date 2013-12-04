Feature: A user can edit their profile

Scenario: Edit Profile
	Given I am on any page
	And I am signed in as "test3"
	When I press "Account"
	And I press "Settings"
	Then I should be on the Update your profile page
	When I fill in "Gamertag" with "testchange"
	And I fill in "Password" with "test3pass"
	And I fill in "Confirm password" with "test3pass"
	And I press "Save changes"
	Then I should be on my user page
	


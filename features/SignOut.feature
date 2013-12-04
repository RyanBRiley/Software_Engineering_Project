Feature: A logged in user can sign out

Scenario: User Sign out
	Given I am on any page
	And I am signed in
	When I press "Account"
	And I press "Sign out"
	Then I should be on the GameBook homepage

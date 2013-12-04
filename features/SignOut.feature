Feature: A logged in user can sign out

Scenario: User Sign out
	Given a logged in user
	When I follow "Account"
	And I follow "Sign out"
	Then I should be on the GameBook homepage

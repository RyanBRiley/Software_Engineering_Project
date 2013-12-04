Feature: A returning user can sign in to their account

Scenario: User Sign in
	Given I am on the GameBook homepage
	When I press "Sign in"
	Then I should be on the "Sign in" page
	When I fill in "Gamertag" with "test3"
	And I fill in "Password" with "test3pass"
	Then I should be on my user page

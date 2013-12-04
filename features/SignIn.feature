Feature: A returning user can sign in to their account

Scenario: User Sign in
	Given a valid user
	And I am on the GameBook homepage
	When I follow "Sign in"
	And I fill in the following:
	|Email|test@test.com|
    |Password|testpass|
	And I press "Sign in"
	Then I should be on my user page

Feature: A returning user can sign in to their account

Scenario: User Sign in
	Given a valid user
	And I am on the GameBook homepage
	When I follow "Sign in"
	And I fill in the following:
	|Email|testcuke@test.com|
    |Password|testcukepass|
	And I press "Sign in"
	Then I should be on my user page

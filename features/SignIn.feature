Feature: A returning user can sign in to their account

Scenario: User Sign in
	Given I am on the GameBook homepage
	When I follow "Sign in"
	Then I should be on the Sign in page
	When I fill in "Email" with "test3@test.com"
	And I fill in "Password" with "test3pass"
	Then I should be on the Sign in page

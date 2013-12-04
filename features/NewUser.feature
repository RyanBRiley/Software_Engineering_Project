Feature: A new user can sign up for an account

Scenario: Create an Account
	Given I am on the GameBook homepage
	When I follow "Sign up now!"
	Then I should be on the Sign-Up page
	When I fill in "GamerTag" with "test3"
	And I fill in "Email" with "test3@test.com"
	And I fill in "Password" with "test3pass"
	And I fill in "Confirmation" with "test3pass"
	And I press "Create my account"
	Then I should be on my user page

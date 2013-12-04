Feature: A user can edit their profile

Scenario: Edit Profile Gamertag
	Given a logged in user
	When I follow "Account"
	And I follow "Settings"
	Then I should be on the Update your profile page
	When I fill in "GamerTag" with "testchange"
	And I fill in "Password" with "testcukepass"
	And I fill in "Confirm Password" with "testcukepass"
	And I press "Save changes"
	Then I should be on my user page
	And I should see "testchange"
	
Scenario: Edit email
  Given a logged in user
  When I follow "Account"
  And I follow "Settings"
  Then I should be on the Update your profile page
  When I fill in "Email" with "emailchange@email.com"
  And I fill in "Password" with "testcukepass"
  And I fill in "Confirm Password" with "testcukepass"
  And I press "Save changes"
  Then I should be on my user page
  And I should see "emailchange@email.com"

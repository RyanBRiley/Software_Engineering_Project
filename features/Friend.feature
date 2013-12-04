Feature: I can add my gamer friends who also use the site

Scenario: Add a friend
	Given a logged in user
	And another user
	When I follow "Browse All Gamers"
	And I press "send friend request "
	Then I should see "friend request pending"

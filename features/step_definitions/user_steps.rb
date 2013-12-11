#user_steps.rb

Given /^a valid user$/ do
  @user = User.create!({
			 :name => "Test",
             :email => "testcuke@test.com",
             :password => "testcukepass",
             :password_confirmation => "testcukepass"
           })
end

Given /^a logged in user$/ do
  step "a valid user"
  visit signin_url
  fill_in "Email", :with => "testcuke@test.com"
  fill_in "Password", :with => "testcukepass"
  click_button "Sign in"
end

Given /^another user$/ do
  @user = User.create!({
			 :name => "cuketest",
             :email => "testcuke2@test.com",
             :password => "testcuke2pass",
             :password_confirmation => "testcuke2pass"
           })
end

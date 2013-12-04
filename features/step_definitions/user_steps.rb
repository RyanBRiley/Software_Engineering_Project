#user_steps.rb

Given /^a valid user$/ do
  @user = User.create!({
			 :name => "Test",
             :email => "test@test.com",
             :password => "testpass",
             :password_confirmation => "testpass"
           })
end

Given /^a logged in user$/ do
  step "a valid user"
  visit signin_url
  fill_in "Email", :with => "test@test.com"
  fill_in "Password", :with => "testpass"
  click_button "Sign in"
end


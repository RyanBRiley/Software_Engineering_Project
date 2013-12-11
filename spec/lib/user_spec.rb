require "spec_helper"
require "user"

describe User do 
	it "has a name" do
		user = User.new
		user.name.should == "NewUser" 
	end
end
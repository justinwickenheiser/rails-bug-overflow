require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.create(lname: "Bobbert", fname: "Joe", email: "example@test.com", thumbnail: "sample.png")
	end

	test "user must be valid" do
		assert @user.valid?
	end

	test "First name cannot be blank" do
		@user.fname = ""
		assert_not @user.valid?
	end

	test "Last name cannot be blank" do
		@user.lname = ""
		assert_not @user.valid?
	end

	test "Email cannot be blank" do
		@user.email = ""
		assert_not @user.valid?
	end

	test "Email must be valid" do
		invalid_emails = ["sample", "sample@", "@test", "sample@test", "sample@test.com", "sample.com"]
		invalid_emails.each do |i|
			begin
				@user.email i
				assert false, "#{i} should be invalid"
			rescue
				assert true
			end
		end
	end

	test "Thumnails must be valid" do
		invalid_thumbnail = ["blob", "blob.com", "smh.gif", "stop.jpg", "none.jpeg", "roll.docx"]
		invalid_thumbnail.each do |i|
			begin
				@user.email i
				assert false, "#{i} should be invalid"
			rescue
				assert true
			end
		end
	end
end

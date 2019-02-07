require 'test_helper'

class BugTest < ActiveSupport::TestCase
	def setup
		@bug = Bug.create(title: "This is my Title", description: "blah blah blah", issue_type: 0, priority: 1, status: 2)
	end

	test "bug must be valid" do
		assert @bug.valid?
	end

	test "Title cannot be blank" do
		@bug.title = ""
		assert_not @bug.valid?
	end

	test "Description cannot be blank" do
		@bug.description = ""
		assert_not @bug.valid?
	end

	test "issue_type must be valid" do
		invalid_types = [-25, 0, 2, 4, 50]
		invalid_types.each do |i|
			begin
				@bug.issue_type i
				assert false, "#{i} should be invalid"
			rescue
				assert true
			end
		end
	end

	test "priority must be valid" do
		invalid_priorities = [-25, 0, 2, 4, 50]
		invalid_priorities.each do |i|
			begin
				@bug.issue_type i
				assert false, "#{i} should be invalid"
			rescue
				assert true
			end
		end
	end

	test "status must be valid" do
		invalid_statuses = [-25, 0, 2, 4, 50]
		invalid_statuses.each do |i|
			begin
				@bug.issue_type i
				assert false, "#{i} should be invalid"
			rescue
				assert true
			end
		end
	end
end

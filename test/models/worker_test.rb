require 'test_helper'

class WorkerTest < ActiveSupport::TestCase
	def setup
		@trab = workers(:one)
	end


   test "Validate the presence name" do
     @trab.name == ""
     assert_not @trab.save
   end
end

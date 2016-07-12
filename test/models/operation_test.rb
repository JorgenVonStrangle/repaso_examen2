require 'test_helper'

class OperationTest < ActiveSupport::TestCase

	def setup
		@trabajador = workers(:one)
		@op = Operation.create(worker_id: @trabajador.id)
		
	end

   test "De la operación obtenr al trabajador responsable" do
     assert @op.worker_id == @trabajador.id
   end
end

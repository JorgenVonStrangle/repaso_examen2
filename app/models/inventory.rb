class Inventory < ActiveRecord::Base
	belongs_to :operation
	scope :operation_first_worker, -> {Worker.first.operations.map do |operation|
		operation.inventory
	end
	}
	scope :unused_item, -> {where(operation_id: nil)}
end

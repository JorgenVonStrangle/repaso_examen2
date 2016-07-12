class AddOperationToInventory < ActiveRecord::Migration
  def change
    add_reference :inventories, :operation, index: true, foreign_key: true
  end
end

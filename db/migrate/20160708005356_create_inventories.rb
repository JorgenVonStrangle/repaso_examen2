class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :serial, index: true, unique: true, null: false
      t.string :description
      t.integer :size

      t.timestamps null: false
    end
  end
end

class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :item_name
      t.string :age_group
      t.integer :quantity
    

      t.timestamps null: false
    end
  end
end

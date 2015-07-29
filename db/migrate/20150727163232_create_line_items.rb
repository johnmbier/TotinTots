class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :list_id

      t.timestamps null: false
    end
  end
end

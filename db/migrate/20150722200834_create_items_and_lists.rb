class CreateItemsAndLists < ActiveRecord::Migration
  def change
    create_table :items_and_lists, id: false do |t|
      t.belongs_to :item, index: true
      t.belongs_to :list, index: true 
    end
  end
end

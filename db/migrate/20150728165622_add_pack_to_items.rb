class AddPackToItems < ActiveRecord::Migration
  def change
  	add_column :items, :pack, :boolean, default: true
  end
end

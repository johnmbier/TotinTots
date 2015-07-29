class AddListIdToTrip < ActiveRecord::Migration
  def change
  	add_column :trips, :list_id, :integer
  end
end

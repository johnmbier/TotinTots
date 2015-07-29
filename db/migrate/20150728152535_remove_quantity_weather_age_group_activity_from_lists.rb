class RemoveQuantityWeatherAgeGroupActivityFromLists < ActiveRecord::Migration
  def change
  	remove_column :lists, :weather, :string
  	remove_column :lists, :age_group, :string
  	remove_column :lists, :activity, :string
  	remove_column :lists, :quantity, :integer
  end
end

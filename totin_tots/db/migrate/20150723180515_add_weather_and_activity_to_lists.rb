class AddWeatherAndActivityToLists < ActiveRecord::Migration
  def change
  	 add_column :lists, :weather, :string
  	 add_column :lists, :activity, :string
  	 add_column :lists, :user_id, :integer
  end
end

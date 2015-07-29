class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :weather
      t.string :activity

      t.timestamps null: false
    end
  end
end

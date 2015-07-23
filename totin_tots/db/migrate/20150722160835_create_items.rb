class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :age_group
      t.integer :days
      t.string :weather
      t.string :activity

      t.timestamps null: false
    end
  end
end

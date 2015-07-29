class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :name
      t.string :age_group
      t.integer :trip_id

      t.timestamps null: false
    end
  end
end

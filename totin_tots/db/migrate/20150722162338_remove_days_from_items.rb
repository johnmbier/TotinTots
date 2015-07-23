class RemoveDaysFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :days, :integer
  end
end

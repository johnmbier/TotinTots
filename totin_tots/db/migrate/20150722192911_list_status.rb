class ListStatus < ActiveRecord::Migration
  def up
    add_column :lists, :status, :string
  end

  def down
    remove_column :lists, :status
  end
end





class AddCompletedToBLists < ActiveRecord::Migration
  def change
    add_column :b_lists, :completed, :boolean
  end
end

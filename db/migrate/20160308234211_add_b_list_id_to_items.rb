class AddBListIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :b_list_id, :integer
  end
end

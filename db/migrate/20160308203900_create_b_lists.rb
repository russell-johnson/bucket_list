class CreateBLists < ActiveRecord::Migration
  def change
    create_table :b_lists do |t|
      t.string :name
      t.date :date_created
      t.date :date_completed

      t.timestamps null: false
    end
  end
end

class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :text, null: false
      t.datetime :deadline_at, null: false
      t.boolean :finish, null: false, default: false
      t.timestamps
    end
  end
end

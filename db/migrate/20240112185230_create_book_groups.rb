class CreateBookGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :book_groups do |t|
      t.integer :book_id
      t.integer :group_id

      t.timestamps
    end
  end
end

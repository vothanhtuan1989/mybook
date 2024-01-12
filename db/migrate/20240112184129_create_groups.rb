class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :user_groups_count
      t.integer :book_groups_count
      t.datetime :start_date
      t.text :description
      t.integer :group_type
      t.string :avatar
      t.integer :status
      t.integer :member_number_limitation
      t.integer :book_number_required
      t.decimal :join_fee

      t.timestamps
    end
  end
end

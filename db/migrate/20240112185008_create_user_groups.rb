class CreateUserGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :user_groups do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :role
      t.integer :status
      t.integer :user_group_type

      t.timestamps
    end
  end
end

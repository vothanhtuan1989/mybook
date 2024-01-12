class CreateBookPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :book_plans do |t|
      t.integer :book_id
      t.integer :plan_id

      t.timestamps
    end
  end
end

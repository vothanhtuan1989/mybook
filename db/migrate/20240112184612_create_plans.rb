class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :priority
      t.integer :status
      t.text :description
      t.datetime :completed_at
      t.boolean :active

      t.timestamps
    end
  end
end

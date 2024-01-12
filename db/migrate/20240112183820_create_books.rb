class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :cover
      t.string :name
      t.text :description
      t.string :author
      t.decimal :price
      t.datetime :buy_at
      t.integer :number_of_page
      t.integer :current_page
      t.boolean :active
      t.integer :priority
      t.integer :user_id

      t.timestamps
    end
  end
end

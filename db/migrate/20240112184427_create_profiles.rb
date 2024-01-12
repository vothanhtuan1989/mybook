class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.integer :number_of_reading
      t.integer :number_page_per_reading
      t.integer :current_book_id
      t.integer :user_id

      t.timestamps
    end
  end
end

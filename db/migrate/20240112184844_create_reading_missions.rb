class CreateReadingMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :reading_missions do |t|
      t.string :name
      t.integer :status
      t.integer :exact_page
      t.date :date
      t.integer :from_page
      t.integer :to_page
      t.integer :book_id
      t.integer :priority
      t.boolean :active

      t.timestamps
    end
  end
end

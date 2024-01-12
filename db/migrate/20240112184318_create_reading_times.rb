class CreateReadingTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :reading_times do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :from_page
      t.integer :to_page
      t.integer :book_id
      t.text :note

      t.timestamps
    end
  end
end

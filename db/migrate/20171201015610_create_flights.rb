class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer :departing_airport_id
      t.integer :arrival_airport_id
      t.datetime :depature_date
      t.datetime :arrival_date
      t.string :duration

      t.timestamps
    end
  end
end

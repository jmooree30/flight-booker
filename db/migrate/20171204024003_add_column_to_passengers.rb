class AddColumnToPassengers < ActiveRecord::Migration[5.1]
  def change
    add_reference :passengers, :booking, foreign_key: true
  end
end

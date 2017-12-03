class AddColumnToAirports < ActiveRecord::Migration[5.1]
  def change
    add_column :airports, :full_name, :string
  end
end

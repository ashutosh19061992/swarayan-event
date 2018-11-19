class AddCityToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :city, :string
    add_column :locations, :pin_code, :string
  end
end

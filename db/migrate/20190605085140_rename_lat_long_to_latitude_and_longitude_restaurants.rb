class RenameLatLongToLatitudeAndLongitudeRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :lat, :float
    remove_column :restaurants, :long, :float
    add_column :restaurants, :longitude, :float
    add_column :restaurants, :latitude, :float
  end
end

class AddCoordinatesToFarmers < ActiveRecord::Migration[5.2]
  def change
    add_column :farmers, :latitude, :float
    add_column :farmers, :longitude, :float
  end
end

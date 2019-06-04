class RemoveLatFromFarmers < ActiveRecord::Migration[5.2]
  def change
    remove_column :farmers, :lat, :float
  end
end

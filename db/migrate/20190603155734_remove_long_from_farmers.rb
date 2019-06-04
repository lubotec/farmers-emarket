class RemoveLongFromFarmers < ActiveRecord::Migration[5.2]
  def change
    remove_column :farmers, :long, :float
  end
end

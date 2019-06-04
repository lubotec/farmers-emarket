class RemovePriceCentsFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :price_cents, :integer
  end
end

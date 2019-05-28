class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :address
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end

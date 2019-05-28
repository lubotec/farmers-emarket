class CreateFarmers < ActiveRecord::Migration[5.2]
  def change
    create_table :farmers do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :address
      t.float :lat
      t.float :long
      t.text :description

      t.timestamps
    end
  end
end

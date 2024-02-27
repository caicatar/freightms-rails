class CreateWarehouses < ActiveRecord::Migration[7.1]
  def change
    create_table :warehouses do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :capacity

      t.timestamps
    end
  end
end

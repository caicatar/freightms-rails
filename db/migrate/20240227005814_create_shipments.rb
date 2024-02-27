class CreateShipments < ActiveRecord::Migration[7.1]
  def change
    create_table :shipments do |t|
      t.date :shipment_date
      t.references :to_warehouse, null: false, foreign_key: { to_table: :warehouses }
      t.references :from_warehouse, null: false, foreign_key: { to_table: :warehouses }
      t.references :product, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.string :from_location
      t.string :to_location
      t.float :to_lat
      t.float :to_long
      t.float :from_lat
      t.float :from_long
      t.integer :total_distance
      t.string :tracking_code
      t.string :total_drive_time
      t.string :status
      t.integer :quantity
      t.decimal :current_load

      t.timestamps
    end
  end
end

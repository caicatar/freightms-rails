class CreateFmsG16Shipments < ActiveRecord::Migration[7.1]
  def change
    create_table :fms_g16_shipments do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.references :fms_g16_route, null: true,foreign_key: true
      t.string :vehicle
      t.string :driver
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

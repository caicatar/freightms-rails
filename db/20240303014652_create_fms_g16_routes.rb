class CreateFmsG16Routes < ActiveRecord::Migration[7.1]
  def change
    create_table :fms_g16_routes do |t|
      t.string :name
      t.string :origin_location
      t.string :delivery_destination
      t.decimal :origin_latitude
      t.decimal :origin_longitude
      t.decimal :destination_latitude
      t.decimal :destination_longitude
      t.decimal :distance
      t.decimal :estimated_time

      t.timestamps
    end
  end
end

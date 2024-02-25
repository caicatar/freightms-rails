class CreateOrderTrackings < ActiveRecord::Migration[7.1]
  def change
    create_table :order_trackings do |t|
      t.string :source_location
      t.string :destination_location
      t.string :transport
      t.date :date
      t.string :status

      t.timestamps
    end
  end
end

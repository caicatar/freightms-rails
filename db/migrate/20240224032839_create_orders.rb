class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :shipper
      t.string :consignee
      t.date :date
      t.string :import
      t.string :transport
      t.string :loading_port
      t.string :discharging_port
      t.string :agent
      t.date :expected_date

      t.timestamps
    end
  end
end

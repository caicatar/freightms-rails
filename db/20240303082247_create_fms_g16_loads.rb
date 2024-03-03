class CreateFmsG16Loads < ActiveRecord::Migration[7.1]
  def change
    create_table :fms_g16_loads do |t|
      t.string :name
      t.references :fms_g16_route, null: true, foreign_key: true
      t.references :fms_g16_shipment, null: true, foreign_key: true
      t.decimal :total_price
      t.decimal :total_fee
      t.decimal :total_weight

      t.timestamps
    end
  end
end

class CreateFmsG16Orders < ActiveRecord::Migration[7.1]
  def change
    create_table :fms_g16_orders do |t|
      t.string :name
      t.string :item
      t.integer :price
      t.integer :fee
      t.integer :weight
      t.string  :dimension
      t.string :LocationFrom
      t.string :LocationTo
      t.string :qty
      t.references :fms_g16_load, null: true,foreign_key: true

      t.timestamps
    end
  end
end

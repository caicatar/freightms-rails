class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :weight
      t.string :dimensions
      t.integer :quantity
      t.references :warehouse, null: false, foreign_key: true

      t.timestamps
    end
  end
end

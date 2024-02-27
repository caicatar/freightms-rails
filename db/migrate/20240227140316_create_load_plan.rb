class CreateLoadPlan < ActiveRecord::Migration[7.1]
  def change
    create_table :load_plans do |t|
      t.references :shipment, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
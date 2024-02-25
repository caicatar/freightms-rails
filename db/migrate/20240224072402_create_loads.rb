class CreateLoads < ActiveRecord::Migration[7.1]
  def change
    create_table :loads do |t|
      t.string :container
      t.string :goods
      t.string :billing_on
      t.integer :pricing
      t.integer :volume
      t.integer :weight
      t.integer :unit_price

      t.timestamps
    end
  end
end

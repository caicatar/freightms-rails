class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :vendor
      t.string :service
      t.integer :quantity
      t.integer :sale

      t.timestamps
    end
  end
end

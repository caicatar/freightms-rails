class CreateVehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :type
      t.decimal :capacity
      t.string :status

      t.timestamps
    end
  end
end

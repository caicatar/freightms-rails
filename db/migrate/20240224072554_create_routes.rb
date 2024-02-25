class CreateRoutes < ActiveRecord::Migration[7.1]
  def change
    create_table :routes do |t|
      t.string :operation
      t.string :source_location
      t.string :destination_location
      t.string :transport
      t.integer :sale

      t.timestamps
    end
  end
end

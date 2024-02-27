class CreateAssignments < ActiveRecord::Migration[7.1]
  def change
    create_table :assignments do |t|
      t.references :route, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.datetime :departure_time
      t.datetime :arrival_time

      t.timestamps
    end
  end
end

class Shipment < ApplicationRecord
  belongs_to :from_warehouse, class_name: "Warehouse"
  belongs_to :to_warehouse, class_name: "Warehouse"
  belongs_to :product
  belongs_to :vehicle
  belongs_to :driver
  before_validation :update_coordinates, if: :from_warehouse_id_changed?
  private

  def update_coordinates
    self.from_lat = from_warehouse&.latitude
    self.to_lat = to_warehouse&.latitude
    self.from_long = from_warehouse&.latitude
    self.to_long = to_warehouse&.latitude
  end

end

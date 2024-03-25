class FmsG16Shipment < ApplicationRecord
  belongs_to :fms_g16_route
  before_create :generate_shipment_name
  paginates_per 10

  private

  def generate_shipment_name
    last_shipment = FmsG16Shipment.order(created_at: :desc).first
    if last_shipment
      last_shipment_number = last_shipment.name.split('#').last.to_i
      self.name = "Shipment##{format('%03d', last_shipment_number + 1)}"
    else
      self.name = "Shipment#001"
    end
  end


end

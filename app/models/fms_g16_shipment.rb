class FmsG16Shipment < ApplicationRecord
  belongs_to :fms_g16_route
  has_many :fms_g16_loads, foreign_key: 'fms_g16_shipment_id'
  paginates_per 10
end

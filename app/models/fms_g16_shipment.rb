class FmsG16Shipment < ApplicationRecord
  belongs_to :fms_g16_route
  paginates_per 10
end

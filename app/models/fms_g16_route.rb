class FmsG16Route < ApplicationRecord
  has_many :fms_g16_loads
  has_many :fms_g16_orders
  paginates_per 10
end

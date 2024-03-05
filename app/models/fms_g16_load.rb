class FmsG16Load < ApplicationRecord
  has_many :fms_g16_orders , foreign_key: 'fms_g16_load_id'
  belongs_to :fms_g16_shipment
  belongs_to :fms_g16_route
  paginates_per 10

  before_validation :update_total

  def update_total
    self.total_price = FmsG16Order.sum(:price)
    self.total_fee = FmsG16Order.sum(:free)
    self.total_weight = FmsG16Order.sum(:weight)

  end
end

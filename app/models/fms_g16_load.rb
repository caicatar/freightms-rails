class FmsG16Load < ApplicationRecord
  has_many :fms_g16_orders
  belongs_to :fms_g16_shipment, optional: true
  paginates_per 10

  # before_validation :update_total

  def initialize(attributes = nil)
    super
    update_total
  end

  def update_total
    self.total_price = FmsG16Order.where(fms_g16_load_id: self.id).sum(:price)
    self.total_fee = FmsG16Order.where(fms_g16_load_id: self.id).sum(:fee)
    self.total_weight = FmsG16Order.where(fms_g16_load_id: self.id).sum(:weight)

  end
end

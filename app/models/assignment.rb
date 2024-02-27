class Assignment < ApplicationRecord
  belongs_to :route
  belongs_to :vehicle
  belongs_to :driver
end

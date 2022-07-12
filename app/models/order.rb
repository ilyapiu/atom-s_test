class Order < ApplicationRecord
  has_many :order_services, dependent: :destroy
  has_many :services, through: :order_services
end
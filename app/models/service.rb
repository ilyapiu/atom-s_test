class Service < ApplicationRecord
  belongs_to :category
  has_many :order_services, dependent: :destroy
  has_many :orders, through: :order_services
  has_many :worker_services, dependent: :destroy
  has_many :workers, through: :worker_services
end

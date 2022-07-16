class Worker < ApplicationRecord
  has_one_attached :photo
  has_many :worker_services, dependent: :destroy
  has_many :services, through: :worker_services
end

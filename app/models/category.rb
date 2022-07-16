class Category < ApplicationRecord
  has_many :services, dependent: :destroy
  has_one_attached :photo
end

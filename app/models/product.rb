class Product < ApplicationRecord
  validates :name, presence: true
  validates :code, presence: true, confirmation: true
  validates :stock, presence: true
  validates :category, presence: true
end

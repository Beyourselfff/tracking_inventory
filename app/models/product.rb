class Product < ApplicationRecord
  validates :name, :code, :stock, :category, presence: true
end

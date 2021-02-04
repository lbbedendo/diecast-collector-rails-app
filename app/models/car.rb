class Car < ApplicationRecord
  belongs_to :automaker
  has_one :brand
  has_one :collection

  validates :name, presence: true
end

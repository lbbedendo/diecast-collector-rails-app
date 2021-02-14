class Car < ApplicationRecord
  belongs_to :automaker
  belongs_to :brand, optional: true
  belongs_to :collection, optional: true

  validates :name, presence: true
end

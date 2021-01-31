class Car < ApplicationRecord
  belongs_to :automaker
  belongs_to :collection
  belongs_to :brand

  validates :name, presence: true
end

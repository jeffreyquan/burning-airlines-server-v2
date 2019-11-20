class Flight < ApplicationRecord
  has_many :reservations
  has_many :users, :through => :reservations
  belongs_to :plane, :optional => true

  scope :origin, -> (origin) { where origin: origin }
  scope :destination, -> (destination) { where destination: destination }
end

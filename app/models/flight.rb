class Flight < ApplicationRecord
  has_many :reservations
  has_many :users, :through => :reservations
  belongs_to :plane, :optional => true
end

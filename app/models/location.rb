class Location < ApplicationRecord
  has_many :concerts, dependent: :destroy 
end

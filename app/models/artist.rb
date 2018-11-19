class Artist < ApplicationRecord
  has_many :remunerations,dependent: :delete_all
  has_many :concerts, dependent: :delete_all
  has_many :concerts, through: :remunerations
  has_many :specialities, dependent: :delete_all
end

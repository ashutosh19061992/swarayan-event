class Artist < ApplicationRecord
  has_many :remunerations,dependent: :delete_all
  has_many :concerts, dependent: :delete_all
  has_many :concerts, through: :remunerations
  has_and_belongs_to_many  :specialities
end

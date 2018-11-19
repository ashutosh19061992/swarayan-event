class Subscription < ApplicationRecord
  belongs_to :member
  belongs_to :product
  has_and_belongs_to_many  :concerts
  enum status: [:active, :inactive ]
end

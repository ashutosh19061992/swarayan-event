class Member < ApplicationRecord
  enum status: [:active, :inactive]
  has_many :follow_ups
  belongs_to :volunteer 
  belongs_to :concert
  has_many :attendances 
  has_many :subscriptions
  has_many :concerts, through: :attendances
end

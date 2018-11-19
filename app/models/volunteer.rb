class Volunteer < ApplicationRecord
  
  has_many :follow_ups, dependent: :delete_all
  has_many  :members, through:  :follow_ups
end

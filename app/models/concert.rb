class Concert < ApplicationRecord
  belongs_to :location    
  has_many :follow_ups  
  has_many :members
  has_many :artists
  has_and_belongs_to_many :subscriptions  
end

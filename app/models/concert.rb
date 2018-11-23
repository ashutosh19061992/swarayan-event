class Concert < ApplicationRecord
  has_many :attendances
  belongs_to :location, :dependent => :delete
  has_many :follow_ups  
  has_many :artists, :dependent => :destroy 
  has_and_belongs_to_many :subscriptions  
end

class Concert < ApplicationRecord
  belongs_to :location, :dependent => :destroy   
  has_many :follow_ups  
  has_many :artists, :dependent => :destroy 
  has_and_belongs_to_many :subscriptions  
end

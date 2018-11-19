class ReportController < ApplicationController
  require 'pry'

  

  def expiring_subscription
    
  end  

  def follow_ups_by_volunteer
  end
#  binding.pry
  def get_volunteer_follow_ups
    @volunteer_id = (params[:volunteer_id])
      Volunteer.all.each do |volunteer|
        volunteer.follow_ups.each { |follow_up|
          puts follow_up.concert_id
          puts follow_up.response
          puts follow_up.volunteer_id
          puts follow_up.created_at
          puts follow_up.updated_at
        }
      end
  end
  
  
  def follow_ups_by_concerts
    @concert=Concert.all
  end
  
  def get_concert_id
  end
  
end

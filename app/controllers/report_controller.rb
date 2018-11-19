class ReportController < ApplicationController
  require 'pry'

  

  def expiring_subscription
    
  end  

  def follow_ups_by_volunteer
    
  end
#  binding.pry
  def get_volunteer_follow_ups
    
    @volunteer_id = (params[:volunteer_id])
    @follow = FollowUp.where(volunteer_id: @volunteer_id).take
    @member = Member.where(id: @follow.member_id).take
    @concert = Concert.where(id:@follow.concert_id).take
#    puts(@follow.response)
#    puts(@member.name)
#    puts(@concert.concert_name)
#    puts(@follow.response)
#    puts(@follow.created_at)
#    puts(@follow.updated_at)
  end
  
  
  def follow_ups_by_concerts
    @concert=Concert.all
  end
  
  def get_concert_id
  end
  
end

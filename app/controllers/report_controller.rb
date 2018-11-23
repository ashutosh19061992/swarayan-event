class ReportController < ApplicationController
  
  def expiring_subscription
    puts @from_date = (params[:subs_from])
    puts @to_date = (params[:subs_to])
    @inactive_expiring_sub_in_date_range = Subscription.where(:subscribed_at => @from_date..@to_date, status: "inactive")
    puts @inactive_expiring_sub_in_date_range
  end  

  def follow_ups_by_volunteer
    
  end
#  binding.pry
  def get_volunteer_follow_ups
    
    ## get the parameter as volunteer id
    @volunteer_id = (params[:volunteer_id])
    
    ## get volunteer record on the basis of voluntee_id
    @volunteer = Volunteer.where(id: @volunteer_id).take
    
    puts(@concert)
    
    ## get all the follow_ups 
    @follow_ups = @volunteer.follow_ups
    
    ## iterate all active record
    ## test purpose
    @follow_ups.each do |f|
      puts f.volunteer_id
      puts f.member_id
      puts f.concert_id
      puts f.response
    end
  end
  
  
  def get_concert_follow_ups
    
    ## get the parameter as concert id
    @concert_id = (params[:concert_id])
      
    ## retrieve the concert record on the basis of id
    @concert = Concert.where(id: @concert_id).take
    
    ## find all the follow_ups of that concert
    ## return an array of active record
    ## render it to html
    @all_follow_ups = @concert.follow_ups
    
    ## for test purpose
    puts @all_follow_ups
    
    
    ## for test purpose
    @all_follow_ups.each do |f|
        puts f.volunteer_id
        puts f.member_id
        puts f.concert_id
        puts f.response
    end
  end
  
  def follow_ups_by_concerts
  end
  
  def get_concert_attendances
   
    @concert_id = (params[:concert_id])
    @concert_record = Concert.where(id: @concert_id).take
    @all_attendance = @concert_record.attendances
  end
  
end

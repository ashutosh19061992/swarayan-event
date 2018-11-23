class SubscriptionReportController < ApplicationController
  
  
  def get_all_record
    return Subscription.all
  end
  
  def active 
    ## return's an active status record
    @active_subscription = Subscription.where(" status = '0' ")
    
    puts @active_subscription
    
    ## test purpose
    @active_subscription.each do |each_subs|
      puts each_subs.member_id
      puts each_subs.product_id
      puts each_subs.subscribed_at
      puts each_subs.status
      puts each_subs.duration
    end
 end

  
  def inactive
    ## return's an inactive status record
    @inactive_subscription = Subscription.where(" status = '1' ")
    
    puts @inactive_subscription
    
    ## test purpose
    @inactive_subscription.each do |each_subs|
      puts each_subs.member_id
      puts each_subs.product_id
      puts each_subs.subscribed_at
      puts each_subs.status
      puts each_subs.subscribed_at
      puts each_subs.duration
    end
    
  end
  
  ## subscription in date range
  def date_range
    puts @from_date = (params[:from])
    puts @to_date =(params[:to])
    puts(Attendance.first.created_at.strftime("%Y-%m-%d"))
    @attendance_record = Attendance.where(:created_at => @from_date..@to_date)
    puts(@attendance_record)
    @attendance_record.each do |attendance|
      @member_name = Member.where(id: attendance.member_id).take.name
      @concert_name = Concert.where(id: attendance.concert_id).take.concert_name
      @concert_location_name = Location.where(id: Concert.where(id: attendance.concert_id).take.location_id).take.name
      @concert_location_state = Location.where(id: Concert.where(id: attendance.concert_id).take.location_id).take.state
      @concert_location_city = Location.where(id: Concert.where(id: attendance.concert_id).take.location_id).take.city
      puts attendance.concert_id
      puts attendance.head_count
      puts "++++++++++++++++++++++++"
    end
  end
  
end

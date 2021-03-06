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
    @subs_from = (params[:subs_from])
    @subs_to = (params[:subs_to])
#    Subscription.first.subscribed_at
    @subscription_date_range = Subscription.where(:subscribed_at => @subs_from..@subs_to)
  end
  
end

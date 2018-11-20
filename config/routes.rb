Rails.application.routes.draw do
  
    namespace :admin do
      resources :artists
      resources :attendances
      resources :concerts
      resources :follow_ups
      resources :locations
      resources :members
      resources :products
      resources :remunerations
      resources :specialities
      resources :subscriptions
      resources :volunteers
      
      root to: "artists#index"
    end
    
  #root routes
  root 'welcome#index'
  
  #Report generations
  get 'report/expiring_subscription'
  get 'report/follow_ups_by_concerts'
  get 'report/follow_ups_by_volunteers'
  
  get 'report/get_volunteer_follow_ups'
  get 'report/get_concert_follow_ups'
  #subscription report
  get 'subscription_report/active'
  get 'subscription_report/inactive'
  get 'subscription_report/date_range'
  
  #attendance report
  get 'attendance_report/concert'
  get 'attendance_report/date_range'
  
  
end

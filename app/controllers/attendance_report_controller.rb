class AttendanceReportController < ApplicationController
  
  
  def concert
    @concert_id = (params[:concert_id]) 
  end
  
  def get_concert_attendances
    
  end
  
end

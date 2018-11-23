class AttendanceReportController < ApplicationController
  
  
  
 
  
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

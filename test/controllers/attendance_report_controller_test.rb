require 'test_helper'

class AttendanceReportControllerTest < ActionDispatch::IntegrationTest
  test "should get concert" do
    get attendance_report_concert_url
    assert_response :success
  end

end

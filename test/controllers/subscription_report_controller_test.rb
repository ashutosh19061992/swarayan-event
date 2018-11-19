require 'test_helper'

class SubscriptionReportControllerTest < ActionDispatch::IntegrationTest
  test "should get active" do
    get subscription_report_active_url
    assert_response :success
  end

end

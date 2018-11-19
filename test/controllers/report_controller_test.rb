require 'test_helper'

class ReportControllerTest < ActionDispatch::IntegrationTest
  test "should get expiring_subscription" do
    get report_expiring_subscription_url
    assert_response :success
  end

end

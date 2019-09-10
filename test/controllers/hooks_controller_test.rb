require 'test_helper'

class HooksControllerTest < ActionDispatch::IntegrationTest
  test "should get stripe" do
    get hooks_stripe_url
    assert_response :success
  end

end

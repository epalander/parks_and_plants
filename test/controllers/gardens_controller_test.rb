require 'test_helper'

class GardensControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get gardens_show_url
    assert_response :success
  end

end

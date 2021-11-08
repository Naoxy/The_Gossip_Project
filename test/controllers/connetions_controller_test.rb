require 'test_helper'

class ConnetionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get connetions_show_url
    assert_response :success
  end

end

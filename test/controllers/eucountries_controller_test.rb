require "test_helper"

class EucountriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eucountries_index_url
    assert_response :success
  end
end

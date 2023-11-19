require "test_helper"

class UnidataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get unidata_index_url
    assert_response :success
  end
end

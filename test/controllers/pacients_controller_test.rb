require "test_helper"

class PacientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pacients_index_url
    assert_response :success
  end

  test "should get new" do
    get pacients_new_url
    assert_response :success
  end

  test "should get create" do
    get pacients_create_url
    assert_response :success
  end

  test "should get destroy" do
    get pacients_destroy_url
    assert_response :success
  end
end

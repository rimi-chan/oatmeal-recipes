require "test_helper"

class PowdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get powders_index_url
    assert_response :success
  end

  test "should get new" do
    get powders_new_url
    assert_response :success
  end

  test "should get show" do
    get powders_show_url
    assert_response :success
  end

  test "should get search" do
    get powders_search_url
    assert_response :success
  end

  test "should get create" do
    get powders_create_url
    assert_response :success
  end

  test "should get edit" do
    get powders_edit_url
    assert_response :success
  end
end

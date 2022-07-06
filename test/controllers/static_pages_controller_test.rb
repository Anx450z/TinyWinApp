require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = " | TinyWin"
  end

  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Home#{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help#{@base_title}"
  end

  test "should get privacy" do
    get static_pages_privacy_url
    assert_response :success
    assert_select "title", "Privacy#{@base_title}"
  end

  test "should get tos" do
    get static_pages_tos_url
    assert_response :success
    assert_select "title", "TOS#{@base_title}"
  end
end

require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get lifestyle" do
    get pages_lifestyle_url
    assert_response :success
  end

  test "should get videos" do
    get pages_videos_url
    assert_response :success
  end

  test "should get coding" do
    get pages_coding_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

end

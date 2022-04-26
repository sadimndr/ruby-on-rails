require "test_helper"

class RailsblogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @railsblog = railsblogs(:one)
  end

  test "should get index" do
    get railsblogs_url
    assert_response :success
  end

  test "should get new" do
    get new_railsblog_url
    assert_response :success
  end

  test "should create railsblog" do
    assert_difference("Railsblog.count") do
      post railsblogs_url, params: { railsblog: { description: @railsblog.description, title: @railsblog.title, upload: @railsblog.upload } }
    end

    assert_redirected_to railsblog_url(Railsblog.last)
  end

  test "should show railsblog" do
    get railsblog_url(@railsblog)
    assert_response :success
  end

  test "should get edit" do
    get edit_railsblog_url(@railsblog)
    assert_response :success
  end

  test "should update railsblog" do
    patch railsblog_url(@railsblog), params: { railsblog: { description: @railsblog.description, title: @railsblog.title, upload: @railsblog.upload } }
    assert_redirected_to railsblog_url(@railsblog)
  end

  test "should destroy railsblog" do
    assert_difference("Railsblog.count", -1) do
      delete railsblog_url(@railsblog)
    end

    assert_redirected_to railsblogs_url
  end
end

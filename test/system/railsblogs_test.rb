require "application_system_test_case"

class RailsblogsTest < ApplicationSystemTestCase
  setup do
    @railsblog = railsblogs(:one)
  end

  test "visiting the index" do
    visit railsblogs_url
    assert_selector "h1", text: "Railsblogs"
  end

  test "should create railsblog" do
    visit railsblogs_url
    click_on "New railsblog"

    fill_in "Description", with: @railsblog.description
    fill_in "Title", with: @railsblog.title
    fill_in "Upload", with: @railsblog.upload
    click_on "Create Railsblog"

    assert_text "Railsblog was successfully created"
    click_on "Back"
  end

  test "should update Railsblog" do
    visit railsblog_url(@railsblog)
    click_on "Edit this railsblog", match: :first

    fill_in "Description", with: @railsblog.description
    fill_in "Title", with: @railsblog.title
    fill_in "Upload", with: @railsblog.upload
    click_on "Update Railsblog"

    assert_text "Railsblog was successfully updated"
    click_on "Back"
  end

  test "should destroy Railsblog" do
    visit railsblog_url(@railsblog)
    click_on "Destroy this railsblog", match: :first

    assert_text "Railsblog was successfully destroyed"
  end
end

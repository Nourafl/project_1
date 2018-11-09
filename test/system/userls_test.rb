require "application_system_test_case"

class UserlsTest < ApplicationSystemTestCase
  setup do
    @userl = userls(:one)
  end

  test "visiting the index" do
    visit userls_url
    assert_selector "h1", text: "Userls"
  end

  test "creating a Userl" do
    visit userls_url
    click_on "New Userl"

    fill_in "Email", with: @userl.email
    fill_in "Login", with: @userl.login
    fill_in "Name", with: @userl.name
    click_on "Create Userl"

    assert_text "Userl was successfully created"
    click_on "Back"
  end

  test "updating a Userl" do
    visit userls_url
    click_on "Edit", match: :first

    fill_in "Email", with: @userl.email
    fill_in "Login", with: @userl.login
    fill_in "Name", with: @userl.name
    click_on "Update Userl"

    assert_text "Userl was successfully updated"
    click_on "Back"
  end

  test "destroying a Userl" do
    visit userls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userl was successfully destroyed"
  end
end

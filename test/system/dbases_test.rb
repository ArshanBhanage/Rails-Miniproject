require "application_system_test_case"

class DbasesTest < ApplicationSystemTestCase
  setup do
    @dbasis = dbases(:one)
  end

  test "visiting the index" do
    visit dbases_url
    assert_selector "h1", text: "Dbases"
  end

  test "creating a Dbase" do
    visit dbases_url
    click_on "New Dbase"

    fill_in "Description", with: @dbasis.description
    fill_in "Google pay", with: @dbasis.google_pay
    fill_in "Instagram", with: @dbasis.instagram
    fill_in "Title", with: @dbasis.title
    fill_in "Whatsapp", with: @dbasis.whatsapp
    click_on "Create Dbase"

    assert_text "Dbase was successfully created"
    click_on "Back"
  end

  test "updating a Dbase" do
    visit dbases_url
    click_on "Edit", match: :first

    fill_in "Description", with: @dbasis.description
    fill_in "Google pay", with: @dbasis.google_pay
    fill_in "Instagram", with: @dbasis.instagram
    fill_in "Title", with: @dbasis.title
    fill_in "Whatsapp", with: @dbasis.whatsapp
    click_on "Update Dbase"

    assert_text "Dbase was successfully updated"
    click_on "Back"
  end

  test "destroying a Dbase" do
    visit dbases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dbase was successfully destroyed"
  end
end

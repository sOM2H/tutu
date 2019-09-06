require "application_system_test_case"

class RailwayStationsTest < ApplicationSystemTestCase
  setup do
    @railway_station = railway_stations(:one)
  end

  test "visiting the index" do
    visit railway_stations_url
    assert_selector "h1", text: "Railway Stations"
  end

  test "creating a Railway station" do
    visit railway_stations_url
    click_on "New Railway Station"

    fill_in "Title", with: @railway_station.title
    click_on "Create Railway station"

    assert_text "Railway station was successfully created"
    click_on "Back"
  end

  test "updating a Railway station" do
    visit railway_stations_url
    click_on "Edit", match: :first

    fill_in "Title", with: @railway_station.title
    click_on "Update Railway station"

    assert_text "Railway station was successfully updated"
    click_on "Back"
  end

  test "destroying a Railway station" do
    visit railway_stations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Railway station was successfully destroyed"
  end
end

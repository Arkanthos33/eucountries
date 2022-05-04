require "application_system_test_case"

class CountriesTest < ApplicationSystemTestCase
  setup do
    @country = countries(:one)
  end

  test "visiting the index" do
    visit countries_url
    assert_selector "h1", text: "Countries"
  end

  test "should create country" do
    visit countries_url
    click_on "New country"

    fill_in "Capital", with: @country.capital
    fill_in "Flag", with: @country.flag
    fill_in "Language", with: @country.language
    fill_in "Membership", with: @country.membership
    fill_in "Money", with: @country.money
    fill_in "Name", with: @country.name
    fill_in "Population", with: @country.population
    fill_in "State", with: @country.state
    click_on "Create Country"

    assert_text "Country was successfully created"
    click_on "Back"
  end

  test "should update Country" do
    visit country_url(@country)
    click_on "Edit this country", match: :first

    fill_in "Capital", with: @country.capital
    fill_in "Flag", with: @country.flag
    fill_in "Language", with: @country.language
    fill_in "Membership", with: @country.membership
    fill_in "Money", with: @country.money
    fill_in "Name", with: @country.name
    fill_in "Population", with: @country.population
    fill_in "State", with: @country.state
    click_on "Update Country"

    assert_text "Country was successfully updated"
    click_on "Back"
  end

  test "should destroy Country" do
    visit country_url(@country)
    click_on "Destroy this country", match: :first

    assert_text "Country was successfully destroyed"
  end
end

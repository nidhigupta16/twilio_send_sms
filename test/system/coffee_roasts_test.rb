require "application_system_test_case"

class CoffeeRoastsTest < ApplicationSystemTestCase
  setup do
    @coffee_roast = coffee_roasts(:one)
  end

  test "visiting the index" do
    visit coffee_roasts_url
    assert_selector "h1", text: "Coffee roasts"
  end

  test "should create coffee roast" do
    visit coffee_roasts_url
    click_on "New coffee roast"

    fill_in "Roast description", with: @coffee_roast.roast_description
    fill_in "Roast name", with: @coffee_roast.roast_name
    click_on "Create Coffee roast"

    assert_text "Coffee roast was successfully created"
    click_on "Back"
  end

  test "should update Coffee roast" do
    visit coffee_roast_url(@coffee_roast)
    click_on "Edit this coffee roast", match: :first

    fill_in "Roast description", with: @coffee_roast.roast_description
    fill_in "Roast name", with: @coffee_roast.roast_name
    click_on "Update Coffee roast"

    assert_text "Coffee roast was successfully updated"
    click_on "Back"
  end

  test "should destroy Coffee roast" do
    visit coffee_roast_url(@coffee_roast)
    click_on "Destroy this coffee roast", match: :first

    assert_text "Coffee roast was successfully destroyed"
  end
end

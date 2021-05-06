require "application_system_test_case"

class BuildsTest < ApplicationSystemTestCase
  setup do
    @build = builds(:one)
  end

  test "visiting the index" do
    visit builds_url
    assert_selector "h1", text: "Builds"
  end

  test "creating a Build" do
    visit builds_url
    click_on "New Build"

    fill_in "Arrow shaft", with: @build.arrow_shaft
    fill_in "Draw length", with: @build.draw_length
    fill_in "Draw weight", with: @build.draw_weight
    fill_in "Insert weight", with: @build.insert_weight
    click_on "Create Build"

    assert_text "Build was successfully created"
    click_on "Back"
  end

  test "updating a Build" do
    visit builds_url
    click_on "Edit", match: :first

    fill_in "Arrow shaft", with: @build.arrow_shaft
    fill_in "Draw length", with: @build.draw_length
    fill_in "Draw weight", with: @build.draw_weight
    fill_in "Insert weight", with: @build.insert_weight
    click_on "Update Build"

    assert_text "Build was successfully updated"
    click_on "Back"
  end

  test "destroying a Build" do
    visit builds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Build was successfully destroyed"
  end
end

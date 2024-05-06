require "application_system_test_case"

class BodyPartsTest < ApplicationSystemTestCase
  setup do
    @body_part = body_parts(:one)
  end

  test "visiting the index" do
    visit body_parts_url
    assert_selector "h1", text: "Body parts"
  end

  test "should create body part" do
    visit body_parts_url
    click_on "New body part"

    fill_in "Name", with: @body_part.name
    click_on "Create Body part"

    assert_text "Body part was successfully created"
    click_on "Back"
  end

  test "should update Body part" do
    visit body_part_url(@body_part)
    click_on "Edit this body part", match: :first

    fill_in "Name", with: @body_part.name
    click_on "Update Body part"

    assert_text "Body part was successfully updated"
    click_on "Back"
  end

  test "should destroy Body part" do
    visit body_part_url(@body_part)
    click_on "Destroy this body part", match: :first

    assert_text "Body part was successfully destroyed"
  end
end

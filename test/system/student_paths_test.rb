require "application_system_test_case"

class StudentPathsTest < ApplicationSystemTestCase
  setup do
    @student_path = student_paths(:one)
  end

  test "visiting the index" do
    visit student_paths_url
    assert_selector "h1", text: "Student Paths"
  end

  test "creating a Student path" do
    visit student_paths_url
    click_on "New Student Path"

    fill_in "Path", with: @student_path.path_id
    fill_in "Student", with: @student_path.student_id
    click_on "Create Student path"

    assert_text "Student path was successfully created"
    click_on "Back"
  end

  test "updating a Student path" do
    visit student_paths_url
    click_on "Edit", match: :first

    fill_in "Path", with: @student_path.path_id
    fill_in "Student", with: @student_path.student_id
    click_on "Update Student path"

    assert_text "Student path was successfully updated"
    click_on "Back"
  end

  test "destroying a Student path" do
    visit student_paths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student path was successfully destroyed"
  end
end

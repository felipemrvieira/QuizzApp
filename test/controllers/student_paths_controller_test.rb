require 'test_helper'

class StudentPathsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_path = student_paths(:one)
  end

  test "should get index" do
    get student_paths_url
    assert_response :success
  end

  test "should get new" do
    get new_student_path_url
    assert_response :success
  end

  test "should create student_path" do
    assert_difference('StudentPath.count') do
      post student_paths_url, params: { student_path: { path_id: @student_path.path_id, student_id: @student_path.student_id } }
    end

    assert_redirected_to student_path_url(StudentPath.last)
  end

  test "should show student_path" do
    get student_path_url(@student_path)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_path_url(@student_path)
    assert_response :success
  end

  test "should update student_path" do
    patch student_path_url(@student_path), params: { student_path: { path_id: @student_path.path_id, student_id: @student_path.student_id } }
    assert_redirected_to student_path_url(@student_path)
  end

  test "should destroy student_path" do
    assert_difference('StudentPath.count', -1) do
      delete student_path_url(@student_path)
    end

    assert_redirected_to student_paths_url
  end
end

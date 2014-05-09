require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { description: @course.description, end_date: @course.end_date, hours: @course.hours, image: @course.image, language: @course.language, prerequisites: @course.prerequisites, start_date: @course.start_date, syllabus: @course.syllabus, teacher_id: @course.teacher_id, title: @course.title, video: @course.video, video_content_type: @course.video_content_type, video_file_name: @course.video_file_name, video_file_size: @course.video_file_size }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { description: @course.description, end_date: @course.end_date, hours: @course.hours, image: @course.image, language: @course.language, prerequisites: @course.prerequisites, start_date: @course.start_date, syllabus: @course.syllabus, teacher_id: @course.teacher_id, title: @course.title, video: @course.video, video_content_type: @course.video_content_type, video_file_name: @course.video_file_name, video_file_size: @course.video_file_size }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end

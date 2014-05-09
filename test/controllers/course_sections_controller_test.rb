require 'test_helper'

class CourseSectionsControllerTest < ActionController::TestCase
  setup do
    @course_section = course_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_section" do
    assert_difference('CourseSection.count') do
      post :create, course_section: { course_id: @course_section.course_id, image: @course_section.image, lecture_notes: @course_section.lecture_notes, lecture_url: @course_section.lecture_url, section_id: @course_section.section_id, title: @course_section.title, video: @course_section.video, video_content_type: @course_section.video_content_type, video_file_name: @course_section.video_file_name, video_file_size: @course_section.video_file_size }
    end

    assert_redirected_to course_section_path(assigns(:course_section))
  end

  test "should show course_section" do
    get :show, id: @course_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_section
    assert_response :success
  end

  test "should update course_section" do
    patch :update, id: @course_section, course_section: { course_id: @course_section.course_id, image: @course_section.image, lecture_notes: @course_section.lecture_notes, lecture_url: @course_section.lecture_url, section_id: @course_section.section_id, title: @course_section.title, video: @course_section.video, video_content_type: @course_section.video_content_type, video_file_name: @course_section.video_file_name, video_file_size: @course_section.video_file_size }
    assert_redirected_to course_section_path(assigns(:course_section))
  end

  test "should destroy course_section" do
    assert_difference('CourseSection.count', -1) do
      delete :destroy, id: @course_section
    end

    assert_redirected_to course_sections_path
  end
end

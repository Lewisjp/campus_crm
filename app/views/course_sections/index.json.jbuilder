json.array!(@course_sections) do |course_section|
  json.extract! course_section, :id, :course_id, :section_id, :title, :lecture_notes, :lecture_url, :video, :video_file_name, :video_content_type, :video_file_size, :image
  json.url course_section_url(course_section, format: :json)
end

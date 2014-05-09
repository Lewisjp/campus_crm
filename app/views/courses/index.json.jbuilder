json.array!(@courses) do |course|
  json.extract! course, :id, :title, :description, :video, :video_file_name, :video_content_type, :video_file_size, :image, :syllabus, :language, :hours, :prerequisites, :start_date, :end_date, :teacher_id
  json.url course_url(course, format: :json)
end

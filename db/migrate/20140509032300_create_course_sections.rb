class CreateCourseSections < ActiveRecord::Migration
  def change
    create_table :course_sections do |t|
      t.integer :course_id
      t.integer :section_id
      t.string :title
      t.text :lecture_notes
      t.string :lecture_url
      t.string :video
      t.string :video_file_name
      t.string :video_content_type
      t.integer :video_file_size
      t.string :image

      t.timestamps
    end
  end
end

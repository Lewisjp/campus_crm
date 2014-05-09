class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.string :video
      t.string :video_file_name
      t.string :video_content_type
      t.integer :video_file_size
      t.string :image
      t.text :syllabus
      t.string :language
      t.integer :hours
      t.text :prerequisites
      t.date :start_date
      t.date :end_date
      t.integer :teacher_id

      t.timestamps
    end
  end
end

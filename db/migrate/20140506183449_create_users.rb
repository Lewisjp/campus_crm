class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.boolean :teacher
      t.boolean :site_admin
      t.string :first_name
      t.string :last_name
      t.string :image_url
      t.text :about_me
      t.string :phone
      t.string :institution
      t.string :picture
      t.string :education
      t.string :gender
      t.string :location
      t.date :birthday

      t.timestamps
    end
  end
end

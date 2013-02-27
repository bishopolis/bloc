class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :blog_name
      t.string :username
      t.string :password
      t.file :logo_location

      t.timestamps
    end
  end
end

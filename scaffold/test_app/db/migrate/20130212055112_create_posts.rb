class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :author
      t.string :title
      t.date :published_date
      t.boolean :published
      t.text :summary
      t.text :content
      t.integer :author_id 
      t.string :uri

      t.timestamps
    end
    add_index :posts, :author_id
  end
end

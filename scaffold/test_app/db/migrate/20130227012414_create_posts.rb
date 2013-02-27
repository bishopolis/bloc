class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :author
      t.string :title
      t.text :body
      t.date :published_date
      t.boolean :published
      t.text :summary
      t.uri :uri

      t.timestamps
    end
    add_index :posts, :author_id
  end
end

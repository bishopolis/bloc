class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.uri :website
      t.uri :twitter
      t.uri :linkedin

      t.timestamps
    end
  end
end

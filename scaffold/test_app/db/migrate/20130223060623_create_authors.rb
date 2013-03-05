class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.string :website
      t.string :twitter
      t.string :linkedin

      t.timestamps
    end
  end
end

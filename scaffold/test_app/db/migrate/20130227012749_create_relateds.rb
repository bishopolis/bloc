class CreateRelateds < ActiveRecord::Migration
  def change
    create_table :relateds do |t|
      t.references :post
      t.string :uri

      t.timestamps
    end
    add_index :relateds, :post_id
  end
end

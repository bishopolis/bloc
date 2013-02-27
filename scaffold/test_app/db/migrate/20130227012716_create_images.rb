class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.uri :image
      t.references :post

      t.timestamps
    end
    add_index :images, :post_id
  end
end

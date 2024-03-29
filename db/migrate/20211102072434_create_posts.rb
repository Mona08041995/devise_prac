class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :author
      t.boolean :published_status

      t.timestamps
    end
  end
end

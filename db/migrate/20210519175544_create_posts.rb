class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :content
      t.string :video_url
      t.string :img_url
      t.integer :user_id

      t.timestamps
    end
  end
end

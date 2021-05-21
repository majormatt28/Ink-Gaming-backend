class RemoveVideoUrlFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :video_url, :string
  end
end

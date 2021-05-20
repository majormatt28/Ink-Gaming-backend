class CreateConsolePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :console_posts do |t|
      t.integer :console_id
      t.integer :post_id

      t.timestamps
    end
  end
end

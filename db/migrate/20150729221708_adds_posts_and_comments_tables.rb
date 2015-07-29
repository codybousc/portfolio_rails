class AddsPostsAndCommentsTables < ActiveRecord::Migration
  def change
      create_table :posts do |t|
        t.string :post_title
        t.string :post_content
        t.string :attached_image_file_name
        t.string :attached_image_content_type
        t.integer :attached_image_file_size
        t.datetime :attached_image_updated_at
        t.timestamps null: false
      end

      create_table :comments do |t|
        t.string :comment_content
        t.string :comment_author
        t.integer :post_id
        t.timestamps null: false
      end
  end
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :author
    	t.string :title
    	t.text :text
    	t.string :date
    	t.string :photo_url
    end
  end
end


# 			t.integer :comment_count
#       t.integer :like_count
#       t.integer :dislike_count
#       t.timestamps null: false
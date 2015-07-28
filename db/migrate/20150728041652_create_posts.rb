class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :author
    	t.string :text
    	t.string :date
    end
  end
end

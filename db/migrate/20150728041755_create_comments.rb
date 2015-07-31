class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :author 
      t.text :text
      t.datetime :created_at

      t.references :post, index: true
    end
    add_foreign_key :comments, :posts
  end
end

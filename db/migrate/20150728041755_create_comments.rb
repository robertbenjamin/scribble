class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :author 
      t.text :text

      t.references :post, index: true
      t.timestamps null: true
    end
    add_foreign_key :comments, :posts
  end
end

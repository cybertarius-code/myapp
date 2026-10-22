class AddPropertiesToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :title, :string
    add_column :posts, :sub_title, :string
    add_column :posts, :author, :string
    add_column :posts, :likes, :integer
    add_column :posts, :comments, :string
    add_column :posts, :content, :text
  end
end

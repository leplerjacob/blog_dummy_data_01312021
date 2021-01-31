class CreatePostsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :message
      t.references :user
    end
  end
end

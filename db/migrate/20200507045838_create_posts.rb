class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :body
      t.integer :commentCount
      t.integer :viewCount
      t.string :author

      t.timestamps
    end
    add_index :posts, :name, unique: true
  end
end

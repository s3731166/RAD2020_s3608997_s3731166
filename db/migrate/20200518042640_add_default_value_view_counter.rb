class AddDefaultValueViewCounter < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :viewCount, :integer, default: 0
    change_column :posts, :commentCount, :integer, default: 0

  end
end

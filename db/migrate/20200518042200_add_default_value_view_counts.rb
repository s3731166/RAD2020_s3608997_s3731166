class AddDefaultValueViewCounts < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_default :posts, :viewCount, default: 0
    end
  end
end

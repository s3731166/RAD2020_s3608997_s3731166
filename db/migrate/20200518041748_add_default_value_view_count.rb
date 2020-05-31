class AddDefaultValueViewCount < ActiveRecord::Migration[6.0]
  def change
    def up
      change_column_default :posts, :viewCount, default: 0
    end
    
    def down
      change_column_default :posts, :viewCount, default: nil
    end
  end
end

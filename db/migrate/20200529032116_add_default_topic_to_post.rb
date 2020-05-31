class AddDefaultTopicToPost < ActiveRecord::Migration[6.0]
  def change
    change_column_default :posts, :topic_id, default: 0

  end
end

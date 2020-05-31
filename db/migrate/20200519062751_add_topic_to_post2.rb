class AddTopicToPost2 < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :topic, index: true
  end
end

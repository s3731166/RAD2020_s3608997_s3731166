class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :topicName

      t.timestamps
    end
    add_index :topics, :topicName, unique: true
  end
end

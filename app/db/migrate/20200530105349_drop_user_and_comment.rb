class DropUserAndComment < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :user
    remove_column :comments, :comment

  end
end

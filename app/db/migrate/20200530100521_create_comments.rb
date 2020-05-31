class CreateComments < ActiveRecord::Migration[6.0]
  def change
    change_table :comments do |t|
      t.string :name
      t.text :body
  
    end
  end
end

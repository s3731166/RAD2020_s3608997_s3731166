class Post < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :body, presence: true, uniqueness: true   

    belongs_to :user
    belongs_to :topic


end

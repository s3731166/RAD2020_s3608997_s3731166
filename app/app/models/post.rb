class Post < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :body, presence: true, uniqueness: true   

    belongs_to :user
    belongs_to :topic
    has_many :comments
    scope :by_topic, -> (topics) { where(:topic => (topics|| Course.uniq.pluck(:topic)) ) }



end

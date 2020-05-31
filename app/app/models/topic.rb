class Topic < ApplicationRecord
    has_many :posts, dependent: :destroy
    #ASSUME: delete every post under a topic 
end

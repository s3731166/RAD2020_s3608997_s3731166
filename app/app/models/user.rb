class User < ApplicationRecord
  include Gravtastic
    gravtastic
  has_secure_password
  validates :phone, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true, numericality: true
  validates :email, presence: true, uniqueness: true
  
 
  has_many :posts, dependent: :destroy

end

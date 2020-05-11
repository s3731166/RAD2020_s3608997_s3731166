class User < ApplicationRecord
  has_secure_password
  validates :phone, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true


end

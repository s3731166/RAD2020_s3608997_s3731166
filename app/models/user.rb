class User < ApplicationRecord
  include Gravtastic
    gravtastic

  has_secure_password
  validates :phone, presence: true, uniqueness: true, length: { in: 10..13, message: "Phone Number Must Be 10-13 Digits" } 
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {with: /\A\S+@.+\.\S+\z/ , message: "Invalid Format, Requires <>@<>.<>"}
  validates :password,length: { in: 8..20, message: "Password Must Be 8-20 Characters" } ,format: { with: /\A[a-zA-Z0-9]+\z/ , message: "Invalid Format, No Special Characters"}

  
 
  has_many :posts, dependent: :destroy

end

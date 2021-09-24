class User < ApplicationRecord
    has_secure_password
     has_many :books
     has_many :reviews
     validates :username, :email, presence: true 
     validates :email, uniqueness: true

   
end

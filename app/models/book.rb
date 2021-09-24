class Book < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :reviews
  
    validates :title, :author, :description, :image, presence: true 
    validates :title, uniqueness: true
end

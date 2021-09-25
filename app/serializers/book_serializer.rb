class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :image, :title, :author, :description, :user_id, :category_id, :category, :user
  
end

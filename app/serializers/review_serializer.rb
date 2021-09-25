class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :comment, :likes, :book_id, :user_id, :book, :user
end

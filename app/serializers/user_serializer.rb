class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :password
  has_many :books
  has_many :reviews
end

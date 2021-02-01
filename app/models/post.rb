class Post < ApplicationRecord
  has_many :comments, as: :commentable
  has_rich_text :body
end

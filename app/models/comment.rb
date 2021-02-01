class Comment < ApplicationRecord
  include ActionView::RecordIdentifier

  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_rich_text :body

  validates :body, presence: true

  after_create_commit -> {
    broadcast_append_to [commentable, :comments], target: "#{dom_id(commentable)}_comments"
  }
end

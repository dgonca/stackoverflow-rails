class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :author, class_name: "User"
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  validates :content, :author_id, :question_id, presence: true
end

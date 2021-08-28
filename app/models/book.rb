class Book < ApplicationRecord
 
  belongs_to :user
  has_many :book_comments, dependent: :destroy
  validates :title, presence: true
  validates :body, length: {maximum: 200,minimum: 1}
end

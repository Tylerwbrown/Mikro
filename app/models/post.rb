class Post < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  has_many :comments

  validates :user_id, presence: true
  validates :content, presence: true
  validates :title, presence: true, length: {maximum: 50}
  validates :category, presence: true
end

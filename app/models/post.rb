class Post < ActiveRecord::Base

  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true

  def post_date
    created_at.strftime('%D')
  end
end

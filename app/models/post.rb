class Post < ActiveRecord::Base

  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true

  default_scope { order('created_at DESC') }
  
  def post_date
    created_at.strftime('%d %b %Y')
  end
end

class Post < ActiveRecord::Base

  belongs_to :user


  def post_date
    created_at.strftime('%D')
  end
end

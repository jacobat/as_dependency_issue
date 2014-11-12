class Post < ActiveRecord::Base
  def comment
    Comment.new
  end

  def title
    "Awesome first post!"
  end
end

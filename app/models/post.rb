class Post < ActiveRecord::Base
  has_many :comments
  
  Post.all.each do |post|
    if (post.id == 1) || (post.id % 5 == 0)
      post.title.replace "SPAM"
      post.save!
    end
  end
end

class User < ApplicationRecord
    has_many :posts
    has_many :comments
    # has_many :posts, through: :comments
    has_many :follows
    # has_many :posts, through: :follows

    has_many :posts_user_commented_on, through: :comments, source: :post
    has_many :posts_user_follow, through: :follows, source: :post
end

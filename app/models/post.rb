class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :follows
    # has_many :users, through: :comments
    # has_many :users, through: :follows
    has_many :users_who_commented, through: :comments, source: :user
    has_many :users_who_followed, through: :follows, source: :user
end

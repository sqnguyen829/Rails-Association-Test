class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users, :include => [:posts, :posts_user_commented_on, :posts_user_follow]
    end
end

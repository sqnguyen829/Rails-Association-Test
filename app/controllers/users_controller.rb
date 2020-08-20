class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users, :include => [:posts , :follows => {:include => [:post, :user]}]
    end
end

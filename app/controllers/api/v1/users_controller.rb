class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, include: :courses, status: :ok
    end
    
end

class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, include: [:courses, :user_courses, :businesses], status: :ok
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    private

    def user_params
        params.require(:user).permit!
    end


    
end

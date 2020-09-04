class Api::V1::CoursesController < ApplicationController

    def index
        @courses = Course.all
        render json: @courses, include: [:businesses, :users, :comments, :user_courses], status: :ok
    end
   
end

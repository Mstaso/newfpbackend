class Api::V1::CoursesController < ApplicationController

    def index
        @courses = Course.all
        render json: @courses, include: [:businesses, :users], status: :ok
    end
   
end

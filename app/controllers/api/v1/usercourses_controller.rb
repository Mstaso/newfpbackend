class Api::V1::UsercoursesController < ApplicationController

    def index
        @usercourses = Usercourses.all
        render json: @usercourses
    end

    def create
        usercourse = Usercourse.create(usercourse_params)
        render json: usercourse
    end

    private

    def usercourse_params
        params.require(:usercourse).permit!
    end


    
end
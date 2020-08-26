class Api::V1::BusinessesController < ApplicationController
    def index
        @businesses = Business.all
        render json: @businesses, include: :courses, status: :ok
    end
end

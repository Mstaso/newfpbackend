class Api::V1::BusinessesController < ApplicationController
    skip_before_action :authorized
    
    def index
        @businesses = Business.all
        render json: @businesses, include: [:courses, :users], status: :ok
    end
end

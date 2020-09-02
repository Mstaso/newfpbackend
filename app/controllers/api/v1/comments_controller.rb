class Api::V1::CommentsController < ApplicationController
    def index 
        @comments = Comment.all
        render json: @comments
    end 

    def create
        comment = Comment.create(comment_params)
        render json: comment
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :course_id, :user_id)
    end
end

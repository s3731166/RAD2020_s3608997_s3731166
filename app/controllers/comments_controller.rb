class CommentsController < ApplicationController
    before_action :authenticate_user!

    def create 
        @post = Post.find(params[:post_id])

        @comment = @post.comments.create(params[:comment].permit( :body))
        @comment.name = @current_user.username
        @comment.save
        @post.commentCount = @post.comments.count
        redirect_to post_path(@post)
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end
end
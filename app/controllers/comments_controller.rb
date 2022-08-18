class CommentsController < ApplicationController

    def create
        @blog = Blog.find_by_id(params[:blog_id])
        @comment  = @blog.comments.create(params[:comment].permit(:name, :content))
        redirect_to blog_path(@blog)
    end

    def destroy
        @blog = Blog.find_by_id(params[:blod_id])
        @comment = @blog.comments.find(params[:id])
        @comment.destroy
        redirect_to blog_path(@blog)
    end

    def show
        @blog = Blog.find_by_id(params[:blog_id])
        @comment = @blog.comments.find(params[:id])
        @comment.destroy
        redirect_to blog_path(@blog)
    end
end

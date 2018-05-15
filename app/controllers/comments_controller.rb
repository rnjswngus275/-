class CommentsController < ApplicationController
    def create
    params.permit!
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(params[:comment])
    
    @comment.save
    redirect_to :back
    end
    
    def destroy #comment destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_back(fallback_location: root_path)
    end

end

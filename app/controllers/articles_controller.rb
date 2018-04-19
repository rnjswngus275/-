class ArticlesController < ApplicationController
  def create
    params.permit!
    @article=Article.new(params[:article])
    @article.save()

    redirect_to @article
  end

  def new

  end

  def index
    @articles=Article.all
  end

  def show
    @article=Article.find(params[:id])

  end
end

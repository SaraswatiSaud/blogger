class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  def index
    @tag = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy

  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Article '#{@article.title}' Updated!"

    redirect_to article_path(@article)
  end

end

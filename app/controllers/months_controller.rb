class MonthsController < ApplicationController
  def index
    @article_days = Article.all.group_by{ |r| r.created_at }
  end


end

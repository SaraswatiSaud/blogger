class ViewController < ApplicationController
  def show
    @article.view_count += 1
  end
end

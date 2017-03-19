class ArticlesController < ApplicationController

  def index

  end

  def show
    @article = Webmanager::Article.find(params[:id])
    respond_to do |format|
      format.html { render :show, location: @article }
      format.json { render json: @article }
    end
  end

end

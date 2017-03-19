class HomeController < ApplicationController
  def index
    @articles = Webmanager::Article.all
    @subscriber = Webmanager::NewsletterReceiver.new
  end

  def daily_darshan

  end
end


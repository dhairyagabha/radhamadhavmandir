class HomeController < ApplicationController
  def index
    @articles = Webmanager::Article.all
    @subscriber = Webmanager::NewsletterReceiver.new
  end

  def daily_darshan

  end

  def about
    @about = Webmanager::Article.tagged_with('about').first
    @priest = Webmanager::Article.tagged_with('priest').first
  end

  def events
    @events = Webmanager::Event.order(start_date: :desc).first(5)
  end

  def contact
    @contact = Webmanager::Form.where(name: 'Contact Form').first
  end

end


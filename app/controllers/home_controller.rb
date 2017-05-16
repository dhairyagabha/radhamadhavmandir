class HomeController < ApplicationController
  def index
    @articles = Webmanager::Article.tagged_with('home')
    @subscriber = Webmanager::NewsletterReceiver.new
  end

  def daily_darshan

  end

  def about
    @about = Webmanager::Article.tagged_with('about').first
    @priest = Webmanager::Article.tagged_with('priest').first
  end

  def events
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @events = Webmanager::Event.where(:start_date => @date.beginning_of_month..@date.end_of_month)
    @events_by_date = @events.group_by(&:start_date)
  end

  def contact
    @contact = Webmanager::Form.where(name: 'Contact Form').first
  end

end


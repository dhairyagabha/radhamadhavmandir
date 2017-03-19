class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper Webmanager::Engine.helpers


end

module Webmanager
  class EventsMailer < ApplicationMailer
    default from: ENV['APP_EMAIL']

    def attend_event(email, event)
      @event = Event.find(event)
      @email = email
      mail(to: @email, subject: "Please attend #{@event.name}")
    end
  end
end

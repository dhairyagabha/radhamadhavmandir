module Webmanager
  class EventsMailer < ApplicationMailer
    default from: 'help@webmanager.com'

    def attend_event(email, event)
      @event = Event.find(event)
      @email = email
      mail(to: @email, subject: "Please attend #{@event.name}")
    end
  end
end

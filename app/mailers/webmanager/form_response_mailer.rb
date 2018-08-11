module Webmanager
  class FormResponseMailer < ApplicationMailer
    default from: ENV['APP_EMAIL']

    def query_received(response)
      @response = response
      @form = response.form
      @email = @form.primary_mail
      mail(to: @email, subject: 'Response to ' + @form.name + ' received!')
    end
  end
end

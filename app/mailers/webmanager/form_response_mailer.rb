module Webmanager
  class FormResponseMailer < ApplicationMailer
    default from: 'help@webmanager.com'

    def query_received(response)
      @response = response
      @form = response.form
      @email = @form.primary_mail
      mail(to: @email, subject: 'Response to ' + @form.name + ' received!')
    end
  end
end

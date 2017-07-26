class AttendeeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.attendee_mailer.send_invite.subject
  #
  def send_invite(event_name, attendee)
    @attendee = attendee

    mail to: attendee.email_address , subject: event_name
  end
end

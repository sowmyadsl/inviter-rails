# Preview all emails at http://localhost:3000/rails/mailers/attendee_mailer
class AttendeeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/attendee_mailer/send_invite
  def send_invite
    AttendeeMailerMailer.send_invite
  end

end

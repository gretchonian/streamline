class NotificationMailer < ApplicationMailer
    default from: "no-reply@streamlineaccount.com"

  def contact_submitted(contact)
    @contact = contact
    mail(to: "gretchen.testing.emails@gmail.com",
      subject: "A new contact has been submitted from #{@contact.name}!")
  end
end

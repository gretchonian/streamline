class Contact < ApplicationRecord
  
  validates_format_of :name, :with => /\A(?=.* )[^0-9`!@#\\\$%\^&*\;+_=]{4,}\z/, :on => :create
  validates_format_of :email, :with => /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, :on => :create
  # validates :message, presence: true
  
  after_create :send_contact_email

  def send_contact_email
    NotificationMailer.contact_submitted(self).deliver
  end
end

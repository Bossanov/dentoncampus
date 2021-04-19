class Message < ApplicationRecord

attribute :name,      :validate => true
  attribute :mail,      :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i


  attribute :message,   :validate => true


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Nouveau contact",
      :to => "antoine.staumont@gmail.com",
      :from => %("#{name}" <#{mail}>)
    }
  end



end

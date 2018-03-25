class Home < MailForm::Base
  attribute :name,           :validate => true
  attribute :email,          :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,       :captcha => true

  def headers
    {
      :subject => "New CONTACT Message",
      :to => "chazzb@ymail.com",
      # :to => "ptaylor1024@yahoo.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

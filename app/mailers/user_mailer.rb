class UserMailer < ActionMailer::Base
  default from: "noreply@figudex.com"
  
  def test_email(email)
    mail(:to => email, :subject => "Test")
  end
end

require "spec_helper"

describe UserMailer do
  it 'should send email to the specified email' do
    email = UserMailer.test_email('waldemarbautista@gmail.com')
    email.should deliver_to('waldemarbautista@gmail.com')
  end
  
  it 'should receive email from noreply@figudex.com' do
    email = UserMailer.test_email('waldemarbautista@gmail.com')
    email.should deliver_from('noreply@figudex.com')
  end
end

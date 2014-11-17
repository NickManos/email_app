class Emailer < ActionMailer::Base
  default from: "from@example.com"
  def contact(recipient, subject, message, sent_at = Time.now)
    @subject = subject
    @recipients = recipient
    @from = 'no-reply@yourdomain.com'
    @sent_on = sent_at
    @body["title"] = 'This is title'
    @body["email"] = 'sender@yourdomain.com'
    @body["message"] = message
    @headers = {}
  end

  def sendmail(user)
    @url  = 'http://example.com/login'
    mail(to: manos.nick@gmail.com,
         body: email["message"],
         content_type: "text/html",
         subject: email["subject"]) do |format|
      format.html { render 'another_template' }
      format.text { render text: 'Render text' }
    end
  end
end

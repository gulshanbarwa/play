class PostmailerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.postmailer_mailer.post_created.subject
  #
   def post_created(message,email,subject)
    @message = message
    mail(to: email, from: "gulshanconnection@gmail.com", subject: subject) do |format|
      format.html { render 'postmailer_mailer/post_created'}
    end
  end
end
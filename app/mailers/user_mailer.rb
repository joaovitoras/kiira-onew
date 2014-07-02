class UserMailer < ActionMailer::Base
  	default from: "joao.vitor@redealumni.com"

   def contact_me(nome, email, message)
    @name    = nome
    @email   = email
    @message = message
    mail(to: "joao.vitor@redealumni.com", subject: 'Entrou em contato pelo site')
  end
end

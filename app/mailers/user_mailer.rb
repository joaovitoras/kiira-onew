class UserMailer < ActionMailer::Base
  include ActiveModel::Validations
  default from: "joao.vitor@redealumni.com"

   validates :name, :email, :message, :presence => true
   validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
   
   def contact_me(nome, email, message)
    @name    = nome
    @email   = email
    @message = message
    mail(to: "joao.vitor@redealumni.com", subject: 'Entrou em contato pelo site')
  end
end

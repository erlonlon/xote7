class Contact < ActiveRecord::Base
  attr_accessible :assunto, :cidade, :conteudo, :email, :nome,:nickname

   captcha :nickname

  validates_presence_of :assunto, :nome, :email, :conteudo

  validates_format_of :email, :with => /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
   default_scope order: "created_at DESC"
end

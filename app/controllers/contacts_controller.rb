class ContactsController < ApplicationController
  before_filter :load_resources
  def index
    @contact = Contact.new
    respond_with @contact

  end

   
  def create
    @contact = Contact.new(params[:contact])
    flash[:notice] = "Contato enviado com sucesso ! Aguande retorno." if @contact.save
    respond_with @contact, :location => contacts_path
   
  end

   def load_resources
     @post_noticias = Category.find(1)
     @gallery_eventos = Type.find(1)
      @posts = Post.paginate page: params[:page], :per_page => 6
   end
  

  
end

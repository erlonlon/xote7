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
     @post_agenda = Category.find(4)
     @gallery_show = Type.find(1)
     @galleries = Gallery.find(:all, :limit => 7, :order=> 'created_at desc')

       @gallery_parceiros = Type.find(4)
     # @posts = Post.paginate page: params[:page], :per_page => 6
   end
  

  
end

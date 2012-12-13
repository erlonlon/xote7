class Admin::GalleriesController < Admin::BaseController

  before_filter :load_resources
  
  def index
    @galleries = Gallery.paginate page: params[:page],:per_page => 10
    respond_with @galleries   
  end
 
  def show
    @gallery = Gallery.find(params[:id])
    respond_with @gallery    
  end
  
  def new
    @gallery = Gallery.new
    respond_with @gallery   
  end
  
  def edit
    @gallery = Gallery.find(params[:id])
  end
  
  def create
    @gallery = Gallery.new(params[:gallery])
    flash[:notice] = "Registro salvo com sucesso" if @gallery.save
    respond_with @gallery, :location => admin_galleries_path
    
  end
  
  def update
    @gallery = Gallery.find(params[:id])
    flash[:notice] = "Registro atualizado com sucesso" if @gallery.update_attributes(params[:gallery])
    respond_with @gallery, :location => admin_galleries_path
    
  end
  
  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    respond_with @gallery, :location => admin_galleries_path
  end

  private
  def load_resources
    @types = Type.all
  end
end

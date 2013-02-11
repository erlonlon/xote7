class AgendasController < ApplicationController

  before_filter :load_resources

  def index
   @posts = Post.paginate page: params[:page], :per_page => 10
   respond_with @post
  	
  end

  def show
    @post = Post.find(params[:id])
    respond_with @post

    end


  def load_resources
     @post_agenda = Category.find(4)
     @gallery_show = Type.find(1)
  @galleries = Gallery.find(:all, :limit => 10, :order=> 'created_at desc')
   end
end

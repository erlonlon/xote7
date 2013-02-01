class AgendasController < ApplicationController

  before_filter :load_resources

  def index
   @posts = Post.all
   respond_with @post
  	
  end

  def show
    @post = Post.find(params[:id])
    respond_with @post
    end


  def load_resources
     #@post_show = Category.find(4)
     @gallery_show = Type.find(1)
     #@galleries = Gallery.all
   end
end

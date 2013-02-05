class PostsController < ApplicationController
  before_filter :load_resources
  
  def index
    @posts = Post.paginate page: params[:page], :per_page => 10
    respond_with @posts
   
  end

 
  def show
    @post = Post.find(params[:id])
    respond_with @post
   
  end

  
    private
  def load_resources
  @post_agenda = Category.find(4)
    @categories = Category.all 
   
     @galleries = Gallery.all
  
    
  end
end

class PagesController < ApplicationController

before_filter :load_resources
  def index

  	@posts = Post.paginate page: params[:page], :per_page => 6

  end

   def load_resources
     @post_agenda = Category.find(4)
     @gallery_show = Type.find(1)
     @galleries = Gallery.find(:all, :limit => 7, :order=> 'created_at desc')

     @gallery_parceiros = Type.find(4)
     @post_noticias = Category.find(1)
   end
end

class PagesController < ApplicationController

before_filter :load_resources
  def index

  	@posts = Post.paginate page: params[:page], :per_page => 6

  end

   def load_resources
    # @post_show = Category.find(4)
     @gallery_show = Type.find(1)
     #@galleries = Gallery.all
   end
end

class ShowsController < ApplicationController
	before_filter :load_resources
	 layout 'abouts'
  def index

  	@gallery = Gallery.paginate page: params[:page], :per_page => 12
    respond_with @gallery
  end


   def load_resources
     @post_agenda = Category.find(4)
     @gallery_show = Type.find(1)
 @galleries = Gallery.find(:all, :limit => 10, :order=> 'created_at desc')
   end
end

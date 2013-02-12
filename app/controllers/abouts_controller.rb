class AboutsController < ApplicationController
	 layout 'abouts'

	  before_filter :load_resources
  def index
  end

   def load_resources
     @post_agenda = Category.find(4)
      @gallery_show = Type.find(1)
     @galleries = Gallery.find(:all, :limit => 7, :order=> 'created_at desc')

     @gallery_parceiros = Type.find(4)
   end
end

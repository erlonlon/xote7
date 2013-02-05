class MusicasController < ApplicationController

	before_filter :load_resources
  def index
  end


   def load_resources
    @post_agenda = Category.find(4)
     @gallery_show = Type.find(1)
     @galleries = Gallery.all
   end
end

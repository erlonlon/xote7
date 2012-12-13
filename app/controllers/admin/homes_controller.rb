class Admin::HomesController < Admin::BaseController

	before_filter :load_resource
  def index
  	@posts = Post.paginate page: params[:page], :per_page => 10
  end

  private
  def load_resource
   @categories = Category.all
  end
end

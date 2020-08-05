class BlogsController < ApplicationController
  def index
    @blog=Blog.all
  end

  def new
    @blog=Blog.new
  end

  def create
    @blog=Blog.new(blog_params)
    if @blog.save
    redirect_to blogs_path, notice: "Post was successfully created."
    else
      render :new
    end
  end

 def show
   @blog=Blog.find(params[:id])
 end


  private
  def blog_params
    params.require(:blog).permit(:content)
  end
end

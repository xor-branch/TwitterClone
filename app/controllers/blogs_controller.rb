class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
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
   #@blog=Blog.find(params[:id])
 end

 def edit
   #@blog=Blog.find(params[:id])
 end

 def update
   #@blog=Blog.find(params[:id])
   if @blog.update(blog_params)
      redirect_to blogs_path, notice: "Post was successfully update."
    else
      render :edit
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice: "Post was successfully destroy."
  end
  private
  def blog_params
    params.require(:blog).permit(:content)
  end
  def set_blog
    @blog=Blog.find(params[:id])
  end
end

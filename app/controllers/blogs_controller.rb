class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    @blog = Blog.new
  end

  def new
    @blog = Blog.new
  end

  def show
    # @blog = Blog.find(params[:id])
    @blogs = Blog.all.order(id: :desc) #降順、新規が上になる
    # @blog = Blog.new
  end

  def create
    Blog.create(blog_params)
    redirect_to blogs_path
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to blog_path, notice:"削除しました"
  end

  def edit
    @blog = Blog.find(params[:id])
    @blogs = Blog.all
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_parameter)
      redirect_to blogs_path, notice: "編集しました"
    else
      render 'edit'
    end
  end
  
  

  
  
  
  

  private

  def blog_params
    params.require(:blog).permit(:set,:menu,:start_time,:rep,:weight,:body_weight,:name)
  end

end
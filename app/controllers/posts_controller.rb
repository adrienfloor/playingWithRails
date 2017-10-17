class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]
  include GravatarHelper

  def index
    @posts = Post.includes(:category, :tags).all
    respond_to do |format|
      format.html
      format.json {render json: @posts.as_json(only: [:name, :created_at, :id])}
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:notice] = "Post successfully updated"
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.valid?
      post.save
      flash[:notice] = "Post successfully created"
      redirect_to posts_path
    else
      @post = post
      render 'new'
    end
  end

  def destroy
    @post.destroy
    flash[:notice] = "Post successfully deleted"
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:name, :content, :slug, :category_id)
    end

    def set_post
      @post = Post.find(params[:id])
    end

end

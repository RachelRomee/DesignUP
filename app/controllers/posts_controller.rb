class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end


   def new
      @post = Post.new
      @post.post_id = params[:post_id]

   end

   def create
      post = Post.new( post_params )

      if post.save
         redirect_to posts_path
      else
         render 'new'
      end
   end

  private

  def post_params
    params.require( :post ).permit( :title, :description, :image )
  end

end

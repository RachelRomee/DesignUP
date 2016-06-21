class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end


   def new
      @post = Post.new
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

  Post.create(title: "Cuba Sunrise", image: "cubasunrise.jpg", description: "Illustration of a car in the sunrise", user_id: jona.id)

end

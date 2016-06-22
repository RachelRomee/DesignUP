class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
  end



  def show
    @post = Post.find(params[:id])
  end


   def new
      @post = Post.new
      @post.user_id = params[:user_id]
   end

   def create
      post = Post.new( post_params )

      if post.save
         redirect_to posts_path
      else
         render 'new'
      end
   end

   def edit
     @post = Post.find( params[:id] )
   end

 def update
   @post = Post.find( params[:id] )

   if @post.update_attributes( post_params )
     redirect_to @post
   else
     render 'edit'
   end
 end

  private

  def post_params
    params.require( :post ).permit( :title, :description, :image, :user_id )
  end

end

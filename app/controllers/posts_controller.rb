class PostsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource


  def index
      if params[:search]
        @posts = Post.search(params[:search]).order("created_at DESC")
      else
        @posts = Post.order('created_at DESC')
      end
    end


  def show
    @post = Post.find(params[:id])
  end


 def new
    @post = Post.new
    @post.user_id = params[:user_id]


 end

 def create
    if @post.save
       redirect_to posts_path
    else
       render 'new'
    end
 end

 def edit
   @post = Post.find( params[:id] )
   authorize! :edit, post
 end

 def update
   @post = Post.find( params[:id] )
   authorize! :update, post

   if @post.update_attributes( post_params )
     redirect_to @post
   else
     render 'edit'
   end
 end

 def user
   @user = User.find( params[:user_id] )

   @posts = Post.where( user: @user ).order( created_at: :desc )

   @likes = @user.likes.joins( :post ).order( "posts.created_at DESC" )
end

private
  def post_params
      params.require( :post ).permit( :title, :description, :image, :search, :user_id, user_attributes:[:name], comments_attributes: [:comment] )
  end



end

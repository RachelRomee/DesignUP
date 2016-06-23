class PostsController < ApplicationController


  def index
    @posts = Post.order(created_at: :asc)

  end

  def show
    @post = Post.find(params[:id])
  end


   def new
      @post = Post.new
      authorize! :new, @post

      @post.user_id = params[:user_id]
   end

   def create
      post = Post.new( post_params )
      @post.user = current_user
      authorize! :create, @post


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
     authorize! :read, user

  end

    private

    def post_params
      params.require( :post ).permit( :title, :description, :image, :user_id )
    end

end

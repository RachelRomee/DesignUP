class CommentsController < ApplicationController
  before_action :authenticate_user!
    before_action :set_comment, only: [:show, :edit, :update, :destroy]


  def create
     post = Post.find( params[:post_id] )
     @comment = Comment.new(post: post, user: current_user, comment: params[:comment] )

    if  @comment.save
      render 'create.js.erb'
    #  respond_to do |format|
    #    format.html {redirect_to post }
    #    format.js #render create.js.erb
    else
      redirect_to post_path
    end
  end
end

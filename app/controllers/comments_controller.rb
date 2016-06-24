class CommentsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_comment, only: [:show, :edit, :update, :destroy]


  def create
     post = Post.find( params[:post_id] )

     comment = Comment.new(post: post, user: current_user, comment: post_params[:comment] )

     comment.save

     redirect_to post_path

end

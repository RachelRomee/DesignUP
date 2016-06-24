class CommentsController < ApplicationController
  before_action :authenticate_user!

  def show
  end



    def create
       post = Post.find( params[:post_id] )

       @comment = Comment.new( comment: post_params[:comment] )

          if @comment.save
             redirect_to post_path
          else
             render post_path
          end
       end
  end

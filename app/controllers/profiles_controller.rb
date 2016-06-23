class ProfilesController < ApplicationController

  before_action :authenticate_user!

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find( params[:id] )

    if @profile.update_attributes( post_params )
      redirect_to @profile
    else
      render 'edit'
    end
  end

  # def user
  #   @user =
  # end

   private

   def post_params
     params.require( :profile ).permit( :image, :expertise, :city, :country, :website, :bio )
   end
end

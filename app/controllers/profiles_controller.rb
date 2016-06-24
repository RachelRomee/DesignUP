class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
    # authorize! :edit, profile
  end

  def update
    @profile = Profile.find( params[:id])
    # authorize! :update, profile

    if @profile.update_attributes( post_params )
      redirect_to @profile
    else
      render 'edit'
    end
  end

  def user
    @user = User.find(params[:user_id])


  end

   private

   def post_params
     params.require( :profile ).permit( :image, :expertise, :city, :country, :website, :bio )
   end
end

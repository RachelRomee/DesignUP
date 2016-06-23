class RegistrationsController < Devise::RegistrationsController

  private

    # Modified Devise params for user login
    def sign_up_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    # def after_sign_up_path_for(resource)
    #   site_path
    # end

    def sign_up(resource_name, resource)
      sign_in(resource_name, resource)
      redirect_to site_path
    end

end

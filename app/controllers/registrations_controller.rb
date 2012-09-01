class RegistrationsController < Devise::RegistrationsController
  def create
    if verify_recaptcha
      super
    else
      build_resource
      clean_up_passwords(resource)
      flash[:alert] = "There was an error with the recaptcha code below. Please re-enter the code and click submit."
      render "users/registrations/new"
    end
  end
  
  def after_inactive_sign_up_path_for(resource)
    new_user_session_path
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :first_name, :tussenvoegsel, :last_name, :initials, :street, :streetnumber, :number_extension, :postalcode, :city, :phonenumber, :dob, :big, :practice_name, :practice_street, :practice_streetnumber, :practice_number_extension, :practice_postalcode, :practice_city, :practice_email, :practice_phonenumber, :website, :contract, :buddy, :training_suggestion, :expertise_id])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :initials, :street, :streetnumber, :number_extension, :postalcode, :city, :country, :phonenumber, :practice_name, :practice_street, :practice_streetnumber, :practice_number_extension, :practice_postalcode, :practice_city, :practice_country, :practice_email, :practice_phonenumber, :website])
  end

  def after_sign_in_path_for(resource)
    # if current_user.member
      user_path(current_user.id)
    # else
    #   signout_path
    # end
  end
end

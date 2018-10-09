class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  include CurrentInterestList
  before_action :set_interest_list

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone, :role, {companies_attributes:[:id]}])

    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone, :role, :company_id])
  end

end

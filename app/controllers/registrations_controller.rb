class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.role == "Farmer"
      new_farmer_path
    else
      new_restaurant_path
    end
  end
end

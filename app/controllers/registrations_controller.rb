class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.role == "Farmer"
      '/farmer/new'
    else
      '/restaurant/new'
    end
  end
end

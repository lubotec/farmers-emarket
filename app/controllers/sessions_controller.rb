class SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message!(:notice, :signed_in)
    sign_in(resource_name, resource)
    yield resource if block_given?
    respond_with resource, location: after_sign_in_path_for(resource)
    if current_user.role == "Restaurant"
      @restaurant = current_user.restaurant
      @restaurant.check_open_order
    end
  end
end

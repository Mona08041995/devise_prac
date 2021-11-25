class Users::SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource_or_scope)
    home_index_path
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
end

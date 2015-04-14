class RegistrationsController < Devise::RegistrationsController

  def create
    params[:user][:first_name], params[:user][:last_name] = params[:name].split
    super
  end

  def after_sign_up_path_for(resource)
    events_path
  end

end
class SessionsController < ApplicationController

  def callback
    auth = request.env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth['provider'],['uid']) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_path, :notice => 'Welcome to Salesforce!!'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end

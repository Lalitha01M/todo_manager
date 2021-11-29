class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render plain: "authenticated successfull"
    else
      render plain: "incorrect login"
    end
  end
end

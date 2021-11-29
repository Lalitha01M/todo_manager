class UsersController < ApplicationController
  skip_before_action :ensure_user_logged_in
  # skip_before_action :verify_authenticity_token


  def new
    render "users/new"
  end

  def create
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    password = params[:password]
      new_user = User.new(first_name: first_name, last_name: last_name, email: email, password: password)

    if new_user.save
        redirect_to todos_path
    else
      flash[:error] = "first name or email can not be empty"
      redirect_to new_user_path
    end
  end

  def login
    email = params[:email]
    password = params[:password]
    users = User.where("email = ? and password_digest = ?", email, password)
    response = !users.empty?
    render plain: response
  end

end

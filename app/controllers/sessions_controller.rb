class SessionsController < ApplicationController

  def new
  	render 'new'
  end

  def create
  	person = Person.find_by_email(params[:session][:email].downcase)
  	if person && person.authenticate(params[:session][:password])
      sign_in person
      flash[:success] = 'Login Successful'
      redirect_to person
  	else
  	  flash.now[:danger] = 'Invalid email/password Combination'
  	  render 'new'
  	end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end

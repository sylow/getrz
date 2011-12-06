class SignupsController < ApplicationController
  def index
  end

  def create
    Signup.create(:email => params[:email])
    render :text => "hello"
  end
end

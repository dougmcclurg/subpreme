class SignupsController < ApplicationController
  def index
    user = User.find_or_create_by_email(:email => params[:user][:email])

    puts "User: #{user.inspect}"

    redirect_to root_url
  end
end

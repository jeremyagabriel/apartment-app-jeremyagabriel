class HomeController < ApplicationController
  def index
    if user_signed_in?
      @user = User.find(current_user.id)
    else
      @user = { id: 0, name: "", email: "", password: "" }
    end
  end
end

class HomeController < ApplicationController
  def index
    flash[:notice] = "早安！您好！"
  end
end

class HomeController < ApplicationController
  before_action :authenticate_users_dashboard!

  def index
    redirect_to '/dashboards'
  end
end
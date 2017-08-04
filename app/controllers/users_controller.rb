class UsersController < ApplicationController

  def index
    @users = User.all
    @events = Event.all
  end

  def show
    @user = User.find(params[:id])
    @event = User.events
  end
end

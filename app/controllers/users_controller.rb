class UsersController < ApplicationController

  def index
    @users = User.all
    # @events = Event.all
  end

  def show
    @user = User.find(params[:user_id])
    # @event = User.events
  end
end

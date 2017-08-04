class EventsController < ApplicationController

  def index
    @user = User.find(params[:id])
    @events = Event.all
  end

  def show
  end

  def new
    @user = User.find(params[:id])
    @event = Event.new
  end

  def create
    @user = User.find(params[:id])
    @event = Event.new(review_params)

    if @review.save
      flash[:notice] = "Review added successfully"
      # redirect_to restaurant_review_path(@review)
       redirect_to restaurant_path(@user)
    else
      flash[:alert] = "Failed to save review."
      render :new
    end
  end

  def review_params
    params.require(:review).permit(
    :name,
    :location
    )
  end

end

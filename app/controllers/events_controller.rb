class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(review_params)

    if @event.save
      flash[:notice] = "Review added successfully"
      redirect_to users_path(@event)
      #  redirect_to restaurant_path(@user)
    else
      flash[:alert] = "Failed to save review."
      render :new
    end
  end

  def review_params
    params.require(:event).permit(
    :name,
    :location
    )
  end

end

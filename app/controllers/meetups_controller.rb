class MeetupsController < ApplicationController

  def index
    # if using self witht he methothod, you can access the Meetup class's method without using "new" ex: Meetup.meetups
    Meetup.new.meetups
    @meetups = Meetup.all
  end

end

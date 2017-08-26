class MeetupsController < ApplicationController

  def index
    # if using self with the methothod, you can access the Meetup class's method without using "new" ex: Meetup.meetups
    Meetup.new.meetups
    @meetups = Meetup.all
    @meetups_list = @meetups.first(10)
  end

end

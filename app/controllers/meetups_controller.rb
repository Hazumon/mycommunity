class MeetupsController < ApplicationController

  def index
<<<<<<< HEAD
    # if using self with the methothod, you can access the Meetup class's method without using "new" ex: Meetup.meetups
    Meetup.new.meetups
    @meetups = Meetup.all
    @meetups_list = @meetups.first(10)
=======
    # if using self witht he methothod, you can access the Meetup class's method without using "new" ex: Meetup.meetups
    Meetup.new.meetups
    @meetups = Meetup.all
>>>>>>> 56f318124505b12e97e6cbf7d5d6ce9ce884aee2
  end

end

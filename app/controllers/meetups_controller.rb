class MeetupsController < ApplicationController

  def index
    # if using self with the methothod, you can access the Meetup class's method without using "new" ex: Meetup.meetups
    Meetup.new.meetups # calls the method meetups. Class name Meetup followed by the method name: meetups
    @meetups = Meetup.all # passes in all of the information from the method to the variable @meetups
    @meetups_list = @meetups.first(11) # displays first 10 elements of of the information passed
  end

end

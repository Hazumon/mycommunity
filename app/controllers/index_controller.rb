class IndexController < ApplicationController

  def index
  end

  def show
    
    @events = User.events
  end

end

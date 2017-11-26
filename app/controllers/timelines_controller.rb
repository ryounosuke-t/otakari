class TimelinesController < ApplicationController

  def index
    @items=Item.all

  end

end

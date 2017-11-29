class TimelinesController < ApplicationController

  def index
    @items=Item.all.limit(4)
  end

end

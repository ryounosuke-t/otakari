class TimelinesController < ApplicationController

  def index
    @items=Item.all.limit(10)
    if signed_in?
      redirect_to all_items_path
    end
  end



end

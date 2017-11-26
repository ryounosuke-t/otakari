class ItemsController < ApplicationController
  def index
    @items=Item.all
  end

  def new
    @items=Item.new
  end


  def create
    @items=Item.create(item_params)
  end

  private
  def item_params
    params.permit(:title, :description, :price, :stock, :image)
  end
end

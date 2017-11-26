class ItemsController < ApplicationController
  def index
    @items=Item.all
  end

  def new
    @items=Item.new
  end

  def show
    @item=Item.find(params[:id])
  end

  def create
    binding.pry
    Item.create(item_params)
    redirect_to controller: :items, action: :index
  end

  private
  def item_params
    params.require(:item).permit(:id, :title, :description, :price, :stock, :image)
  end
end

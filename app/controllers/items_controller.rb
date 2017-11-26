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
    Item.create(item_params)
    redirect_to controller: :timelines, action: :index
  end

  private
  def item_params
    params.require(:item).permit(:id, :title, :description, :price, :stock, :image).merge(user_id: current_user.id)
  end
end

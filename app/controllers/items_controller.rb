class ItemsController < ApplicationController
  def index
    @items=Item.all
  end

  def all
    @items=Item.all
  end

  def new
    @items=Item.new

  end

  def show
    @item=Item.find(params[:id])
    @comments=Comment.all
    @comment=Comment.new
  end

  def create
      Item.create(item_params)
  end

  def edit
    @item=Item.find(params[:id])
  end

  def update
    item=Item.find(params[:id])
    item.update(item_params)
    redirect_to items_path
  end

  def destroy
    item=Item.find(params[:id])
    item.destroy
  end

  def search
    @items=Item.where('title LIKE(?)', "%#{params[:keyword]}%")
  end

  def purchase
  end

  private
  def item_params
    params.require(:item).permit( :title, :description, :price, :stock, :image, :category).merge(user_id: current_user.id)
  end
end

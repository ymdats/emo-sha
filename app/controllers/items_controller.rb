class ItemsController < ApplicationController

  def show
    if params[:id]
    else
      params[:id] = 1
    end
    @item = Item.find(params[:id])
    @evaluation = Evaluation.new
    @evaluations = @item.evaluations.includes(:user).order("created_at DESC")
  end
  def new
    @item = Item.new
  end
  def create
    Item.create(item_params)
  end
  
  private
  def item_params
    params.require(:item).permit(:image, :name, :url)
  end

end

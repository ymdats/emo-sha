class ItemsController < ApplicationController

  def show
    # @item = Item.find(1)
    # @evaluation = Evaluation.new
    # @evaluations = @item.evaluations.includes(:user)
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

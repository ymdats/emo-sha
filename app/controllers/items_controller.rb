class ItemsController < ApplicationController

  def index
  end

  def show
    if params[:id] == nil # 最初の入口（ルート先）
      # 何も入れないで良い
    elsif params[:id] == "start" # 評価開始（item_menu初期化）
      @items = Item.all
      $item_menu = []
      @items.each do |item|
        $item_menu << item.id
      end
      random = rand($item_menu.length)
      $item_choice = $item_menu[random]
      $item_menu.delete_at(random)
    elsif params[:id] == "finish" # 評価完了
      # 何も入れないで良い
    else # それ以外（params[:id]に数値が入る場合）
      @item = Item.find($item_choice)
      @evaluation = Evaluation.new
      @evaluations = @item.evaluations.includes(:user).order("created_at DESC")
    end
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

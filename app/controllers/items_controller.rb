class ItemsController < ApplicationController

  def index
    if user_signed_in?
      @lowerage = (current_user.id-5)
      @lowerage = 20 if @lowerage < 20
      @upperage = (current_user.id+5)
      @upperage = 60 if @upperage > 60
    else
      @lowerage = 20
      @upperage = 60
    end

    @items = Item.includes(:evaluations).with_attached_image
    $item_list = [] #ランキング配列用 [item.id, ratio3]
    $item_choice = nil #評価(item_menu)初期化
    $item_menu = [] #評価(item_menu)初期化
    @items.each do |item|
      $item_menu << item.id #評価(item_menu)初期化
      total = 0
      point3 = 0
      ratio3 = 0
      item.evaluations.each do |evaluation|
        if evaluation.user_id >= @lowerage && evaluation.user_id <= @upperage
          total += 1
          if evaluation.rate == 3
            point3 += 1
          end
        end
      end
      if total != 0
        ratio3 = point3 * 100 / total
      end
      $item_list << [item.id, item.name, ratio3, item.image]
    end
    $item_list = $item_list.sort_by { |_,_,c,_| c }.reverse

    # @items = Item.includes(:evaluations)
    # $item_list = []
    # @items.each do |item|
    #   total = item.evaluations.where(user_id: @lowerage..@upperage).count
    #   if total == 0
    #     ratio3 = 0
    #   else
    #     point3 = item.evaluations.where(rate: 3, user_id: @lowerage..@upperage).count
    #     ratio3 = point3 * 100 / total
    #   end
    #   $item_list << [item.id, ratio3]
    # end
    # $item_list = $item_list.sort_by { |_, b| b }.reverse
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
      @item = Item.find(params[:id])
      @evaluation = Evaluation.new
      # @evaluations = @item.evaluations.includes(:user).order("created_at DESC")
      @evaluations = @item.evaluations.includes(:user).order("created_at DESC")
    end
  end

  def new
    $item_choice = nil
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

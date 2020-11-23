class EvaluationsController < ApplicationController

  def create
    
    evaluation = Evaluation.create(evaluation_params)

    if $item_menu == []
    # 配列が空になったらparams[:id]にfinishを代入
    redirect_to "/items/finish"
    else
    # 配列の中からランダムにitemモデルのid取得+削除
    random = rand($item_menu.length)
    $item_choice = $item_menu[random]
    $item_menu.delete_at(random)
    redirect_to "/items/#{$item_choice}"
    end

  end

  private
  def evaluation_params
    params.require(:evaluation).permit(:rate, :comment).merge(item_id: params[:item_id], user_id: current_user.id)
  end
end

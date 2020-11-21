class EvaluationsController < ApplicationController
  def create
    evaluation = Evaluation.create(evaluation_params)
    redirect_to "/items/#{evaluation.item.id}"
  end

  private
  def evaluation_params
    params.require(:evaluation).permit(:rate, :comment).merge(item_id: params[:item_id], user_id: current_user.id)
  end
end

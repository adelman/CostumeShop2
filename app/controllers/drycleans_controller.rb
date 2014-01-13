class DrycleansController < ApplicationController
  def create
    @agreement = Agreement.find(params[:agreement_id])
    @comment = @agreement.drycleans.create(params[:dryclean].permit(:garment, :invoice))
    redirect_to agreement_path(@agreement)
  end
end

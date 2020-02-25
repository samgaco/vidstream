# frozen_string_literal: true

class PurchasesController < ApplicationController
  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params, user_id: 1)

    @purchase.purchasable << Movie.find(params[:movie_id])
    # @purchase.purchasable << Season.find(params[:season_id])

    if @purchase.save
      flash[:success] = 'Purchase succesful!'
    else
      flash[:danger] = 'Something went wrong'
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def purchase_params
    params.require(:purchase).permit(:price, :quality)
  end
end

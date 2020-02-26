# frozen_string_literal: true

class PurchasesController < ApplicationController
  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(price: 2.99, user_id: 1)

    if params[:purchase][:type] == "Movie"
      @purchase.purchasable = Movie.find(params[:purchase][:id])
    else
      @purchase.purchasable = Season.find(params[:purchase][:id])
    end

    if @purchase.save
      flash[:success] = 'Purchase succesful!'
    else
      flash[:danger] = 'Something went wrong'
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def purchase_params
    params.require(:purchase).permit(:quality)
  end
end

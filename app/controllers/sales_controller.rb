class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]

  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.includes(:products).all
  end

  # GET /sales/1
  # GET /sales/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.includes(:products).friendly.find(params[:id])
    end
end

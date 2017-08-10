class Api::V1::BidsController < ApplicationController

  before_action :find_bid, only: [:show, :destroy]

  def index
    @bids = Bid.all
    render json: @bids, status: 201
  end

  def create
    @bid = Bid.create(bid_params)
    render json: @bid, status: 201
  end

  def show
    render json: @bid, status: 201
  end

  def destroy
    @bid.destroy
  end 

  private

  def bid_params
    params.require(:bid).permit(:bid_price, :user_id, :item_id)
  end

  def find_bid
    @bid = Bid.find(params[:id])
  end

end

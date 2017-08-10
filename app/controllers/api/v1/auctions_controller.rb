class Api::V1::AuctionsController < ApplicationController

  before_action :find_auction, only: [:show, :destroy]

  def index
    @auctions = Auction.all
    render json: @auctions, status: 201
  end

  def create
    @auction = Auction.create(auction_params)
    render json: @auction, status: 201
  end

  def show
    render json: @auction, status: 201
  end

  def destroy
    @auction.destroy
  end

  private

  def auction_params
    params.require(:auction).permit(:start_date, :end_date, :reserve, :selling_price, :winning_bid)
  end

  def find_auction
    @auction = auction.find(params[:id])
  end

end

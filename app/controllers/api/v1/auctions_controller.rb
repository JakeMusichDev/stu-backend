class Api::V1::AuctionsController < ApplicationController

  before_action :find_auction, only: [:show, :destroy]

  before_action :current_auction_bids, only: [:bids]

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

  def bids
    render json: @bids, status: 201
  end

  private

  def auction_params
    params.require(:auction).permit(:start_date, :end_date, :reserve, :seller_id, :winning_bid, :lot_year, :lot_dimensions, :lot_description, :lot_title, :lot_medium)
  end

  def find_auction
    @auction = Auction.find(params[:id])
  end

  def current_auction_bids
    @auction = Auction.find(params[:id])
    @bids = Bid.all.where(collector_id: @auction.id)
  end
end

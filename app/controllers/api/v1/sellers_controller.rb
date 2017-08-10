class Api::V1::SellersController < ApplicationController

  def index
    @sellers = Seller.all
  end

  def create
    @seller = Seller.create(name: params[name], email: params[email], password: params[password])
    render json: @seller, status: 200
  end

end

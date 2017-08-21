class Api::V1::SellersController < ApplicationController

  def index
    @sellers = Seller.all
  end

  def show
    @seller = Seller.find(params[:id])
    render json: @seller, status: 201
  end

  def create
    @seller = Seller.create(name: params["name"], email: params["email"], password: params["password"])
    render json: { user: @seller, jwt: created_jwt = issue_token({id: @seller.id})}, status: 200
  end

end

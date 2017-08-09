class Api::V1::ItemsController < ApplicationController
  before_action :find_item, only: [:show, :destroy]

  def index
    @items = Item.all
    render json: @items, status: 201
  end

  def create
    @item = Item.create(item_params)
    render json: @item, status: 201
  end

  def show
    render json: @item, status: 201
  end

  def destroy
    @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:title, :year, :medium, :provenance, :dimensions, :reserve)
  end

  def find_item
    @item = Item.find(params[:id])
  end

end

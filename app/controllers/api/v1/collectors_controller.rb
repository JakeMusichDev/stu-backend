class Api::V1::CollectorsController < ApplicationController

  def index
    @collectors = Collector.all
  end

  def create
    @collector = Collector.create(name: params[name], email: params[email], password: params[password])
    render json: @collector, status: 200
  end

end

class Api::V1::CollectorsController < ApplicationController

  def index
    @collectors = Collector.all
  end

  def create
    @collector = Collector.create(name: params[name], email: params[email], password: params[password])
    render json: {user: @collector, jwt: created_jwt = issue_token({id: @collector.id})}, status: 200
  end

end

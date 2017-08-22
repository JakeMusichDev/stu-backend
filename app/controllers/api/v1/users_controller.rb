class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: 201
  end

  def create
    @user = User.create(name: params["name"], email: params["email"], password: params["password"])
    render json: { user: @user, jwt: created_jwt = issue_token({id: @user.id})}, status: 200
  end

end

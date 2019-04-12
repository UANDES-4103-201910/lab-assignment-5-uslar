class UsersController < ApplicationController
  def index
	@users = User.all
	respond_to do |format|
	format.json {render json: @users}
  end

  def create
	@user = User.create!(user_params)
	respond_to do |format|
	format.json {render json: @user}
  end

  def destroy
	user = User.find(params[:id])
        @user.destroy
	respond_to do |format|
	format.json {render json: @user}
  end

  def update
	@user = User.find(params[:id])
	@user.update_attributes!(event_params)
	respond_to do |format|
	format.json {render json: @user}
  end
end

class EventController < ApplicationController
  def index
	@events = Event.all
	respond_to do |format|
	format.json {render json: @events}
  end

  def create
	@event = event.create!(event_params)
	respond_to do |format|
	format.json {render json: @event}
  end

  def destroy
	@event = Event.find(params[:id])
	@event.destroy
	respond_to do |format|
	format.json {render json: @event}
  end

  def update
	@event = Event.find(params[:id](
	@event.update_attributes!(event_params)
	respond_to do |format|
	format.json {render json: @event}
  end
end

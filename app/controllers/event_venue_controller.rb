class EventVenueController < ApplicationController
  def index
	@event_venues = EventVenue.all
	respond_to do |format|
	format.json {render json: @event_venues}
  end

  def create
	@event_venue = EventVenue.create!(event_venue_params)
	respond_to do |format|
	format.json {render json: @event_venue}
  end

  def destroy
	@event_venue = EventVenue.find(params[:id])
	@event_venue.destroy
	respond_to do |format|
	format.json {render json: @event_venue}
  end

  def update
	@event_venue = EventVenue.find(params[:id])
	@event_venue.update_attributes!(event_venue_params)
	respond_to do |format|
	format.json {render json: @event_venue}
  end
end

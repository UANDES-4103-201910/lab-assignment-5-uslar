class TicketTypeController < ApplicationController
  def index
   	@ticket_types = TicketType.all
	respond_to do |format|
	format.json {render json: @ticket_types}
  end

  def create
	@ticket_type = TicketType.create!(tickettype_params)
	respond_to do |format|
	format.json {render json: @ticket_type}

  end

  def destroy
	@ticket_type = TicketType.find(params[:id])
	@ticket_type.destroy
	respond_to do |format|
	format.json {render json: @ticket_types}
  end

  def update
	@ticket_type = TicketType.find(params[:id])
	@ticket_type.update_attributes!(event_params)
	respond_to do |format|
	format.json {render json: @ticket_types}
  end

  private
    def tickettype_params
	params.permit( :event_id, :price, :ticket_zone_id )

    end

end

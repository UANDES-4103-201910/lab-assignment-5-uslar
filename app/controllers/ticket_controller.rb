class TicketController < ApplicationController
  def index
	@tickets = Ticket.all
	respond_to do |format|
	format.json {render json: @tickets}
  end

  def create
	@ticket = Ticket.create!(ticket_params)
	respond_to do |format|
	format.json {render json: @ticket}
  end

  def destroy
	@ticket = Ticket.find(params[:id])
	@ticket.destroy
	respond_to do |format|
	format.json {render json: @ticket}
  end

  def update
	@ticket = Ticket.find(params[:id](
	@ticket.update_attributes!(ticket_params)
	respond_to do |format|
	format.json {render json: @event}
  end
end

class TripsController < ApplicationController
  def new
    @trip = Trip.new
    @trip.travel_order_id = session[:travel_order_id]
  end

  def edit
  end

  def create
  end
end

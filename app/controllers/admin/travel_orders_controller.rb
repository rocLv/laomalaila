
class Admin::TravelOrdersController < ApplicationController
  helper Admin::TravelOrdersHelper

  def new
    @travel_order = TravelOrder.find(params[:id])
    @travel_order.trips.build
  end

  def index
    @travel_orders = TravelOrder.all
  end

  def create

  end

  def update

  end

  def show
  end
end

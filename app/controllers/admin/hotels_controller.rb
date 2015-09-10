class Admin::HotelsController < ApplicationController
  def index
  end

  def new
    @hotel = Hotel.new
    @hotel.rooms.build
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      render :show
    else
      render :new, alert: '酒店创建失败'
    end
  end

  def update
  end

  def edit
  end

  def show
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :rank, :phone, :address)
  end
end

class Users::AccountsController < ApplicationController
  before_action :authenticate_user!

  ##
  # show user account's information
  # link to session, registration, etc
  # 
  def index
  end

  ##
  # show user's travel orders' information, status
  # add :edit, :delete links
  #
  def show
    @travel_orders = TravelOrder.where(user_id: current_user).order(id: :desc)
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:id)
  end
end

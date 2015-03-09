class TravelOrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_travel_order, only: [:show, :edit, :update, :destroy]

  helper TravelOrdersHelper

  def index
  end

  def new
    @travel_order = TravelOrder.new
    if params[:type]
      flash[:notice] = @travel_order.notice_type(params[:type].to_i)
      session[:trave_typy] = params[:type]
    end
  end

  def plan
    @travel_order = Order.find(session[:travel_order_id])
    @travel_order.build
  end

  def edit
  end

  def show
    case @travel_order.status.to_sym
    when :submitted
      flash[:notice] = '您的订单提交成功,我们的工作人员正在抓紧为您处理,
        请耐心等待我们的电话通知.'
    when :confirmed
      flash[:notice] = '工作人员已经确认您的订单,正在为您制定行程中...'
    when :ongoning
      flash[:notice] = 'Hi, 您得旅途怎么样呢?我们乐于听到您的反馈.'
    when :finished
      flash[:notice] = '旅途结束了,对我们的服务还满意吗?'
    end
  end

  def update
    if params[:status]
      @travel_order.submitted!
    end
    render :show
  end

  def create
    @travel_order = TravelOrder.new(travel_order_params)
    @travel_order.user_id = current_user.id
    @travel_order.serial_id = Time.now.utc.strftime("%Y%m%d%H%M%S%L")
    @travel_order.modifiable!

    if @travel_order.save
      preview
    else
      flash.now[:alert] = @travel_order.errors.full_messages
      render :new
    end
  end

  def pay
    options = {
      :out_trade_no      => @travel_order.serial_id,
      :subject           => '去#{@travel_order.to}',
      :logistics_type    => 'DIRECT',
      :logistics_fee     => '0',
      :logistics_payment => 'SELLER_PAY',
      :price             =>  @travel_order.fee,
      :quantity          => 1,
      :discount          => 0,
      :return_url        => users_profile_path,
      :notify_url        => alipay_notify_path 
    }

    Alipay::Service.create_direct_pay_by_user_url(options)
  end

  def alipay_notify
    notify_params = params.except(*request.path_parameters.keys)

    if Alipay::Notify.verify?(notify_params)
      render text: 'success'
    else
      render text: 'error'
    end
  end

  private

  def travel_order_params
    params.require(:travel_order).permit(:user_id, :status, :phone, :fax,
      :tax_delivery_address, :emergency_contact_name,
      :emergency_contact_phone, :departure_time,
      :from, :to, :email, :budget, :transports, :hotel_ranks, :pick_ups,
      :estimate_departure_time, :estimate_arrive_time,
      :departure_time, :arrive_time)
  end

  def set_travel_order
    if user_signed_in? && params[:id]
      @travel_order = TravelOrder.where(["user_id = ? and id = ?", current_user.id,
                                         params[:id].to_i]).first
    end
  end

  def preview
    if(params[:preview])
      render :show
    end
  end
end

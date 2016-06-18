class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_order, only: [:show]

  def index
     @orders = Order.all.order("created_at DESC")
  end

  def show

  end

  def new
    @order = current_user.orders.build
  end

  def create
    @order = current_user.orders.build(order_params)

    if @order.save
      flash[:success] = "Your order is created!"
      redirect_to @order
    else
      flash[:error] = "Error occured!"
      render :new
    end
  end

  private
    def find_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:address, :direction, :phone_number,
                                    :status, :price, :weight)
    end
end

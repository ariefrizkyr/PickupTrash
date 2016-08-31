class WithdrawsController < ApplicationController
  before_action :authenticate_user!

  def index
    @withdraws = Withdraw.all.order("created_at DESC")
  end

  def new
    @withdraw = current_user.withdraws.build

    @orders = Order.all
    @withdraws = Withdraw.all
  end

  def create
    @withdraw = current_user.withdraws.build(withdraw_params)

    if @withdraw.save
      flash[:success] = "Withdraw request created!"
      redirect_to withdraws_path
    else
      flash[:error] = "Error occured!"
      render :new
    end
  end

  private
    def withdraw_params
      params.require(:withdraw).permit(:amount, :status)
    end
end

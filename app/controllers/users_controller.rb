class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @orders = Order.all
    @withdraws = Withdraw.all
  end
end

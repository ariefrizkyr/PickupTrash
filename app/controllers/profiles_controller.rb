class ProfilesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @profile = @user.build_profile
  end

  def create
    @user = User.find(params[:user_id])
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = 'Profile Updated!'
      redirect_to user_path(params[:user_id])
    else
      render 'new'
    end
  end

  def edit

  end

  private
    def profile_params
      params.require(:profile).permit(:address, :city, :province, :phone_number,
                                      :bank_name, :account_number, :account_name)
    end
end

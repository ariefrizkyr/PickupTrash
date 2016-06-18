class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user
  before_action :find_profile, only: [:edit, :update]

  def new
    @profile = Profile.new
  end

  def create
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = 'Profile Created!'
      redirect_to user_path(params[:user_id])
    else
      flash[:error] = 'Error occured!'
      render 'new'
    end
  end

  def edit

  end

  def update
    if @profile.update_attributes(profile_params)
      flash[:success] = 'Resume Updated!'
      redirect_to user_path(params[:user_id])
    else
      flash[:error] = 'Error occured!'
      render 'edit'
    end
  end

  private
    def find_user
      @user = User.find(params[:user_id])
    end

    def find_profile
      @profile = @user.profile
    end

    def profile_params
      params.require(:profile).permit(:address, :city, :province, :phone_number,
                                      :bank_name, :account_number, :account_name,
                                      :avatar)
    end
end

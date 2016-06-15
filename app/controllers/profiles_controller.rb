class ProfilesController < ApplicationController
  def new
    @user = User.find(params[:id])
    @profile = @user.build_profile
  end

  def edit

  end
end

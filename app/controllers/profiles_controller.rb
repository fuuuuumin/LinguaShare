class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @profile = Profile.find(params[:id])
    @user = User.find(@profile.user_id)
    @questions = Question.where(user_id: @user.id)
  end

  private

  def profile_params
    params.require(:profile).permit(:nickname, :introduction, :profile_image).merge(user_id: current_user.id)
  end

end

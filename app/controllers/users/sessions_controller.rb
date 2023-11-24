# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  before_action :set_user_profile, only: [:edit, :update, :destroy]
  def show
  end
    
  def logout
     reset_session
     redirect_to root_path
  end


  def edit
  end

  def update
    if @profile.update(profile_params)
      redirect_to profiles_url, notice: 'Профиль успешно обновлен.'
    else
      render :edit
    end
  end

  def destroy
    @profile.destroy
    redirect_to root_url, notice: 'Профиль успешно удален'
  end

  private

  def set_user_profile
    @profile = current_user
  end

  def profile_params
    params.permit(:last_name, :first_name,) 
  end
end


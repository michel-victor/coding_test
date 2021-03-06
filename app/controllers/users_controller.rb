class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    # Users paginated (default_per_page = 10 more options in /initializers/kaminari.rb)
    @users = User.page params[:page]
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to can?(:read, User) ? @user : root_path, notice: t('notice.creation_ok') }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      # Avoid validating password if it has not changed
      if ( user_params[:password].blank? && user_params[:password_confirmation].blank? ?
           @user.update_without_password(user_params) :
           @user.update(user_params)
          )

        format.html { redirect_to can?(:read, User) ? @user : root_path, notice: t('notice.edition_ok') }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to can?(:read, User) ? users_path : root_path, notice: t('notice.deletion_ok') }
    end
  end

  private

  def set_user
    @user = User.find params[:id]
  end

  def user_params
    params.require(:user).permit [:name, :email, :role, :password, :password_confirmation]
  end
end

class UsersController < ApplicationController
  before_filter :logged_in_user, only: [ :edit, :update ]

  def index
    @search = User.ransack( params[:q] )  
    @users = @search.result.paginate page: params[:page] 
  end

  def show
    @user = User.find( params[:id] )
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find( params[:id] )
  end

  def create
    @user = User.new( user_params )

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: t( :user_created ) }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: t( :user_updated ) }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
    end
  end

  private

  def user_params
    params.require( :user ).permit( :name, :role, :email, :password, :password_confirmation )
  end

  def logged_in_user
    unless logged_in?
      flash[ :notice ] = t( :please_log_in_first )
      redirect_to login_path
    end
  end
end
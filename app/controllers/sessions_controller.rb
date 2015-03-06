class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email( session_params[:email].downcase )

		if user && user.authenticate( session_params[:password] )
			log_in user
			flash.notice = 'Login successful!'
			redirect_to tickets_path
		else
			flash.now[ :alert ] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		session.delete( :user_id )
		@current_user = nil
		redirect_to tickets_path
	end

  private

  def session_params
    params.require( :session ).permit( :email, :password )
  end

	
end

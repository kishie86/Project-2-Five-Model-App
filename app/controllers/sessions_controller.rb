class SessionsController < ActionController::Base
    def new
      @user = User.new
    end
    def create
      @user = User.find_by(email: params[:user][:email])
      if @user && @user.authenticate(params[:user][:password])
        session[:id] = @user.id
        redirect_to user_path(@user), notice: "Logged in!"
      else
        flash.now[:alert] = "Email or password is invalid"
        render "new"
      end
    end
    def destroy
      session.clear
      # session[:user_id] = nil
      redirect_to login_path, notice: "Logged out!"
    end
end
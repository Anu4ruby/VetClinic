class UsersController < ApplicationController
     
  def create
    @user = User.new( )

    respond_to do |format|
      if @user.save
        UserMailer.welcome_email(@user).deliver

        format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
    
    private
  def app_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
  end
end
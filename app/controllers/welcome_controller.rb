class WelcomeController < ApplicationController
  def index
  end
  def login
    puts("login")  
      
    @user = User.find_by_username(params[:username])
      puts(@user.id)
      puts("password",@user.passowrd)
    
    if @user.passowrd == params[:password]
        
       session[:user_id]=@user.id    
        
       redirect_to articles_path
    else    
      redirect_to root_path 
    end    
  end      
end

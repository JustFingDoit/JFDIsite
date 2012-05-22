class AdminController < ApplicationController
    
    #Makes it so authenticate has to be run for all controllers inheriting Admin
    before_filter :authenticate
    
    def authenticate
        #Ensures that user is logged in if not visiting one of the public pages
        if not current_member and request.path != "/blogs" and request.path != "/members" and request.path != "/projects"
          render "login"
        end
    end
    
    def new
    end
    
    def login
    end
    
    def create
      user = Member.authenticate(params[:email], params[:password])
      if user
        session[:user_id] = user.id
        redirect_to root_url, :notice => "Logged in!"
      else
        flash.now.alert = "Invalid email or password"
        render "login"
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_url, :notice => "Logged out!"
    end
end

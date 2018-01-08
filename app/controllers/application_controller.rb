class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :user_logged_in?, :current_teacher, :teacher_logged_in?

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

 def user_logged_in?
  	!!current_user
  end

  def must_login
  	if !user_logged_in?
  		redirect_to home_path  		
  	end  	
  end

    def current_teacher
      @current_teacher ||= Teacher.find(session[:teacher_id]) if session[:teacher_id]
    end

   def teacher_logged_in?
      !!current_teacher
    end

    def must_login
      if !teacher_logged_in?
        redirect_to loginguru_path      
      end   
    end
end
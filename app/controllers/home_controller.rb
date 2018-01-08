class HomeController < ApplicationController
	before_action :must_login, only: [:home]
	
	layout 'home'
	
	def index	
	end

	def masuk
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			jur = user.jurusan

			if jur == 'IPA'
				redirect_to dashboardIPA_path #"home"

			elsif jur == 'IPS'
				redirect_to dashboardIPS_path

			elsif jur == 'Bahasa'
				redirect_to dashboardBahasa_path
			end
		else
			redirect_to home_path, notice: ' username or password'
		end
	end

	def logout
		session[:user_id] = nil
		redirect_to home_path #"login"
	end
end
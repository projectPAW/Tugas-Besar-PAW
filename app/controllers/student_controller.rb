class StudentController < ApplicationController

	def muridDaftar
		@user = User.new
		render layout: 'home'
	end

	def tambah
		@user = User.new(user_params)
		if @user.save
			redirect_to daftarMurid_path, notice: ' data berhasil dsimpan'
		else
			redirect_to daftarMurid_path, notice: ' data gagal dsimpan'
		end
	end
	#----------------------------------------------------------------------------------
	def muridEdit #fungsi edit akun
		@user = User.find(params[:noinduk])
	end

	def update
		@user = User.find(params[:noinduk])
		if @user.update(edit_user_params)
			redirect_to setting_path
		else
			redirect_to setting_path
		end
	end
	#----------------------------------------------------------------------------------
	def resetPassword
		render layout: 'home'
	end

	def reset
		@user = User.find_by(username: params[:username])
		if @user.update(password: params[:password])
			redirect_to home_path
		else
			redirect_to reset_password_student_path
		end
	end
	#----------------------------------------------------------------------------------
	def delete #fungsi delete akun
		@user = User.find(params[:noinduk])
		if @user.destroy
			session[:user_noinduk] = nil
			redirect_to home_path
		else
			redirect_to setting_path
		end 
	end
	#----------------------------------------------------------------------------------

	def perkembangan
  		@data = Nilai.all.where(noinduk: params[:noinduk])
	end

	private
	def user_params #method menyimpan data
		params.permit(:noinduk, :nama, :jenkel, :kelas, :jurusan, :sekolah, :username, :password)
	end
	
	def edit_user_params #method menyimpan data
		params.require(:user).permit(:noinduk, :nama, :jenkel, :kelas, :jurusan, :sekolah, :username, :password)
	end
end
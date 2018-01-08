class TeachersController < ApplicationController
	before_action :must_login, only: [:dashboardguru]
	layout 'guru'
	
	def loginguru	
	
	end

	def masuk
		teacher = Teacher.find_by(username: params[:username])
		if teacher && teacher.authenticate(params[:password])
			session[:teacher_id] = teacher.id
			redirect_to dashboardguru_path
		else
			redirect_to loginguru_path, notice: ' username or password'
		end
	end

	def logoutguru
		session[:teacher_id] = nil
		redirect_to loginguru_path
	end

	#---------------------------------------------------------------------------------
	def guruDaftar
		@teacher = Teacher.new
		@dfMapel = ['-Pilih-',
					'Bahasa Indonesia',
					'Bahasa Inggris',
					'Matematika',
					'Fisika',
					'Kimia',
					'Biologi',
					'Ekonomi',
					'Geografi',
					'Sosiologi',
					'Sastra Indonesia',
					'Antropologi',
					'Bahasa Asing']
	end

	def tambah
		@teacher = Teacher.new(teacher_params)
		if @teacher.save
			redirect_to daftarguru_path, notice: ' Data Berhasil Disimpan'
		else
			redirect_to daftarguru_path
		end
	end
	#----------------------------------------------------------------------------------
	def guruEdit #fungsi edit akun
		@teacher = Teacher.find(params[:id])
		@dfMapel = ['-Pilih-',
					'Bahasa Indonesia',
					'Bahasa Inggris',
					'Matematika',
					'Fisika',
					'Kimia',
					'Biologi',
					'Ekonomi',
					'Geografi',
					'Sosiologi',
					'Sastra Indonesia',
					'Antropologi',
					'Bahasa Asing']		
	end

	def update
		@teacher = Teacher.find(params[:id])
		if @teacher.update(edit_teacher_params)
			redirect_to settingGuru_path
		else
			redirect_to settingGuru_path
		end
	end
	#----------------------------------------------------------------------------------
	def delete #fungsi delete akun
		@teacher = Teacher.find(params[:id])
		if @teacher.destroy
			session[:teacher_id] = nil
			redirect_to daftarguru_path
		else
			redirect_to daftarguru_path
		end 
	end
	#----------------------------------------------------------------------------------

	def monitorPerkembangan
		@cekStudent = User.all
		#@cekStudent = Nilai.all.where(mapel: params[:mapel]).group(:nama)
	end

	private
	def teacher_params #method menyimpan data
		params.permit(:nip, :nama, :jenkel, :mapel, :username, :password)
	end
	def edit_teacher_params #method menyimpan data
		params.require(:teacher).permit(:nip, :nama, :jenkel, :mapel, :username, :password)
	end
end

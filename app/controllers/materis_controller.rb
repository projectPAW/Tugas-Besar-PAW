class MaterisController < ApplicationController

	def showMateri
		@materi = Materi.all.where(mapel: params[:mapel])
		#render layout: 'application'
	end
	
	def new
		@materi = Materi.new
		render layout: 'guru'	
	end

	def create
		@materi = Materi.new(materi_params)
		if @materi.save
			redirect_to list_path, notice: ' Materi berhasil disimpan'
		else
			redirect_to list_path, notice: ' Data gagal disimpan'
		end
	end
	#----------------------------------------------------------------------------------
	def list
		@materi = Materi.all.order(:jurusan)
		render layout: 'guru'
	end

	def editMateri #fungsi edit akun
		@materi = Materi.find(params[:id])
		render layout: 'guru'
	end

	def update
		@materi = Materi.find(params[:id])
		if @materi.update(materi_params)
			redirect_to list_path, notice: ' Materi berhasil disimpan'
		else
			redirect_to list_path, notice: ' Data gagal disimpan'
		end
	end

	def delete
		@materi = Materi.find(params[:id])
		@materi.destroy
		redirect_to list_path, notice: ' Materi berhasil dihapus'
	end

	#----------------------------------------------------------------------------------
	private
	def materi_params #method menyimpan data
		params.require(:materi).permit(:jurusan, :mapel, :judul, :file)
	end
end

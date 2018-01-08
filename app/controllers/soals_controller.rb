class SoalsController < ApplicationController
	def list
		@soal = Soal.all.order(:jurusan)
		render layout: 'guru'
	end

	def new
		@soal = Soal.new
		@so = Soal.all
		render layout: 'guru'
	end

	def create
		@soal = Soal.new(soal_params)
		if @soal.save
			redirect_to listSoal_path, notice: ' Data berhasil disimpan'
		else
			redirect_to listSoal_path, notice: ' Data gagal disimpan'
		end
	end

	def editSoal
		@soal = Soal.find(params[:id])
		@so = Soal.all
		render layout: 'guru'
	end

	def update
		@soal = Soal.find(params[:id])
		if @soal.update(soal_params)
			redirect_to listSoal_path, notice: ' Data berhasil disimpan'
		else
			redirect_to listSoal_path, notice: ' Data gagal disimpan'
		end
	end

	def delete
		@soal = Soal.find(params[:id])
		@soal.destroy
		redirect_to listSoal_path, notice: ' Data berhasil dihapus'
	end

	def pretest
		@soal = Soal.all.where(mapel: params[:mapel]).sort_by { rand }
		@nilai = Nilai.new
	end

	def cekpretest
		@cek = Soal.find_by(mapel: params[:mapel])
		@soal = Soal.all.where(mapel: params[:mapel])		
		nilai = 0
		@soal.each do |f|
			if f.id == params["id#{f.id}"].to_i && f.jawabanbenar == params["jawaban#{f.id}"]
				nilai += 10 
			end
		end
		matapel = @cek.mapel
		n = "98f13704"
		x = "2107be6106a"
		redirect_to finishtest_path(n.to_s, :WioEax3w => nilai.to_s, :a364dq0 => n.to_s, :r32d => matapel.to_s)
		#redirect_to finishtest_path(:tes => Digest::MD5.hexdigest(nilai.to_s))
	end


	def finishTest
		@nilai = Nilai.new
		@soal = Soal.all.where(mapel: params[:r32d])
		@ceknilai = params[:WioEax3w]
	end
	
	def submit
		cek = User.find_by(noinduk: params[:noinduk])#.jurusan
		nilai = Nilai.new(nilai_params)	
		#nilai.totnilai = params[:]
		jur = cek.jurusan

		if nilai.save	
			if jur == 'IPA'
				redirect_to simulasiIPA_path #"home"
			elsif jur == 'IPS'
				redirect_to simulasiIPS_path
			elsif jur == 'Bahasa'
				redirect_to simulasiBahasa_path
			end
		else
			redirect_to finishtest_path
		end
	end

	private
	def soal_params
		params.require(:soal).permit(:jurusan, :mapel, :textsoal, :gambar, :jawabanbenar, :jawaban1, :jawaban2, :jawaban3, :jawaban4, :jawaban5)
	end

	def nilai_params
		params.permit(:mapel, :noinduk, :nama, :totnilai)
	end
end
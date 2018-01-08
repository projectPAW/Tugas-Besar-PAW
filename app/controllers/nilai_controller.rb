class NilaiController < ApplicationController
	
	def showNilai
		@nilai = Nilai.all.where(noinduk: params[:noinduk]).group(:mapel)	
	end

	def showPrint
		@nilai = Nilai.all.where(noinduk: params[:noinduk]).group(:mapel)
		render layout: 'print'
	end

	def showMonitor
		@nilai = Nilai.all.where(noinduk: params[:noinduk]).group(:mapel)	
		render layout: 'guru'
	end

	def showPrintM
		@nilai = Nilai.all.where(noinduk: params[:noinduk]).group(:mapel)
		render layout: 'print'
	end
	
end

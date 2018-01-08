require 'rails_helper'

RSpec.describe NilaiController, type: :controller do

	context 'get show nilai' do
		it'showNilai' do
			params = {	mapel: 'Biologi', 
						noinduk: '1234', 
						nama: 'Rendi' , 
						totnilai: '80'}
			Nilai.create(params).save
			x = Nilai.last
			get :showNilai, params: {noinduk: x.noinduk}
			expect(response).to be_success

		end
	end

	context 'get show print' do
		it'showPrint' do
			params = {	mapel: 'Biologi', 
						noinduk: '1234', 
						nama: 'Rendi' , 
						totnilai: '80'}
			Nilai.create(params).save
			x = Nilai.last
			get :showPrint, params: {noinduk: x.noinduk}
			expect(response).to be_success

		end
	end

	context 'get show monitor' do
		it'showMonitor' do
			params = {	mapel: 'Biologi', 
						noinduk: '1234', 
						nama: 'Rendi' , 
						totnilai: '80'}
			Nilai.create(params).save
			x = Nilai.last
			get :showMonitor, params: {noinduk: x.noinduk}
			expect(response).to be_success

		end
	end

	context 'get show printM' do
		it'showPrintM' do
			params = {	mapel: 'Biologi', 
						noinduk: '1234', 
						nama: 'Rendi' , 
						totnilai: '80'}
			Nilai.create(params).save
			x = Nilai.last
			get :showPrintM, params: {noinduk: x.noinduk}
			expect(response).to be_success

		end
	end

end

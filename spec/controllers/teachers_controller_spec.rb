require 'rails_helper'

RSpec.describe TeachersController, type: :controller do

	context 'get guru daftar' do
		it 'guruDaftar' do
			get :guruDaftar
			expect(response).to be_success
		end
	end

	context 'post murid daftar' do
		it 'tambah' do
			params = {	nip: '12345',
						nama: 'Coba', 	
						jenkel: 'Laki-laki', 
						mapel: 'Biologi', 
						username: 'cobauji', 
						password: '1'}		
			post :tambah, params: params
			expect(response).to redirect_to(daftarguru_path)

		end
	end

	context 'post murid daftar' do
		it 'tambah' do
			params = {	nip: '12345',
						nama: 'Coba', 	
						jenkel: 'Laki-laki', 
						mapel: 'Biologi', 
						username: 'cobauji', 
						password: '1'}		
			post :tambah, params: params
			expect(response).to redirect_to(daftarguru_path)

		end
	end

end

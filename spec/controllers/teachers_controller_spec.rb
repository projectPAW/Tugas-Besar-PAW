require 'rails_helper'

RSpec.describe TeachersController, type: :controller do

	context 'get login guru' do
		it 'loginguru' do
			get :loginguru
			expect(response).to be_success
		end
	end

	context 'post loginguru' do
		it 'masuk' do
			Teacher.new(	nip: '12345',
						nama: 'Coba', 	
						jenkel: 'Laki-laki', 
						mapel: 'Biologi', 
						username: 'cobauji', 
						password: 'coba').save
			user = Teacher.last
			params = {username: user.username, password: 'coba'}			
			post :masuk , params:  params
			expect(response).to redirect_to(dashboardguru_path)
		end
	end

	context 'logout guru' do
		it 'logout' do
			delete :logoutguru
		end
	end

	context 'get guru daftar' do
		it 'guruDaftar' do
			get :guruDaftar
			expect(response).to be_success
		end
	end

	context 'post guru daftar' do
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

	context 'get monitor perkembangan' do
		it 'monitorPerkembangan' do
			get :monitorPerkembangan
			expect(response).to be_success
		end
	end
end

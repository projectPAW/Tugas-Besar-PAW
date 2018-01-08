require 'rails_helper'

RSpec.describe StudentController, type: :controller do

	context 'get murid daftar' do
		it 'muridDaftar' do
			get :muridDaftar
			expect(response).to be_success
		end
	end

	context 'post murid daftar' do
		it 'tambah' do
			params = {	noinduk: '1234',
						nama: 'Giansyah', 	
						jenkel: 'Laki-laki', 
						kelas: '3-A',
						jurusan: 'IPA', 
						sekolah: 'SMA Talang Betutu', 
						username: 'giansyah', 
						password: 'gian'}		
			post :tambah, params: params
			expect(response).to redirect_to(daftarMurid_path)
		end
	end

	context 'get murid edit' do
		it 'muridEdit' do
			params = {	noinduk: '1234',
						nama: 'Giansyah', 	
						jenkel: 'Laki-laki', 
						kelas: '3-A',
						jurusan: 'IPA', 
						sekolah: 'SMA Talang Betutu', 
						username: 'giansyah', 
						password: 'gian'}		
			User.create(params).save
			x = User.last
			get :muridEdit, params: {noinduk: x.noinduk}
			expect(response).to be_success
		end
	end

	context 'post murid edit' do
		it 'editM' do
			#params = {	noinduk: '1234',
			#			nama: 'Giansyah', 	
			#			jenkel: 'Laki-laki', 
			#			kelas: '3-A',
			#			jurusan: 'IPA', 
			#			sekolah: 'SMA Talang Betutu', 
			#			username: 'giansyah', 
			#			password: 'gian'}		
			#User.create(params).save
			#x = User.last
			#post :update, params: {noinduk: x.noinduk}
			#expect(response).to redirect_to(setting_path)
		end
	end

	context 'get delete murid' do
		it 'delete' do
			params = {	noinduk: '1234',
						nama: 'Giansyah', 	
						jenkel: 'Laki-laki', 
						kelas: '3-A',
						jurusan: 'IPA', 
						sekolah: 'SMA Talang Betutu', 
						username: 'giansyah', 
						password: 'gian'}		
			User.create(params).save
			x = User.last
			delete :delete, params: {noinduk: x.noinduk}
			expect(response).to redirect_to(home_path)
		end
	end

end

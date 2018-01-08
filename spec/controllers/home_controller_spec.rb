require 'rails_helper'

RSpec.describe HomeController, type: :controller do

	context 'get login murid' do
		it 'index' do
			get :index
			expect(response).to be_success
		end
	end

	context 'post index' do
		it 'masuk' do
			User.new(	noinduk: '1234',
							nama: 'Giansyah', 	
							jenkel: 'Laki-laki', 
							kelas: '3-A',
							jurusan: 'IPA', 
							sekolah: 'SMA Talang Betutu', 
							username: 'giansyah', 
							password: 'gian').save
			user = User.last
			params = {username: user.username, password: 'gian'}			
			post :masuk , params:  params
			expect(response).to redirect_to(dashboardIPA_path)
		end
	end

	context 'logout murid' do
		it 'logout' do
			delete :logout
		end
	end

end

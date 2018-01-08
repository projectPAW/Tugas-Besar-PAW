Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get'home', to:'home#index' #login student
  post 'home', to:'home#masuk'
  delete 'logout', to:'home#logout'
  
  get'/proses', to:'home#proses'
  get'/materi', to: 'home#materi'
  get'/monitoring', to: 'home#monitoring'
  get'/join', to: 'home#join'
  
  get 'daftarMurid', to:'student#muridDaftar'
  post 'daftarMurid', to:'student#tambah'
  get 'setting', to: 'student#setting'
  get 'edit_student/:noinduk', to: 'student#muridEdit', as: :student #edit data user
  post 'edit_student/:noinduk', to: 'student#update'
  delete 'edit_student/:noinduk', to: 'student#delete' #delete user
  get 'reset_password_student', to:'student#resetPassword'
  post 'reset_password_student',to:'student#reset'
  get 'show_nilai/:noinduk', to: 'nilai#showNilai'
  get 'show_print/:noinduk', to: 'nilai#showPrint', as: :showPrint
  get 'profil', to: 'student#profil'

  get 'dashboardIPA', to: 'student#dashboardIPA'
  get 'simulasiIPA', to: 'soals#simulasiIPA'
  get 'dashboardIPS', to: 'student#dashboardIPS'
  get 'simulasiIPS', to: 'soals#simulasiIPS'
  get 'dashboardBahasa', to: 'student#dashboardBahasa'
  get 'simulasiBahasa', to: 'soals#simulasiBahasa'
  get 'perkembangan/:noinduk', to: 'student#perkembangan'

  get 'dashboardguru', to: 'teachers#dashboardguru'
  get 'daftarguru', to: 'teachers#guruDaftar'
  post 'daftarguru', to: 'teachers#tambah'
  get 'loginguru', to: 'teachers#loginguru'
  post 'loginguru', to: 'teachers#masuk'
  delete 'logoutguru', to: 'teachers#logoutguru'
  get 'settingGuru', to: 'teachers#setting'
  get 'edit_guru/:id', to: 'teachers#guruEdit', as: :teacher #edit data user
  post 'edit_guru/:id', to: 'teachers#update'
  delete 'edit_guru/:id', to: 'teachers#delete' #delete user
  get 'MonitorPerkembangan/:mapel', to: 'teachers#monitorPerkembangan', as: :Monitoring

  get 'tambahmateri', to: 'materis#new'
  post 'tambahmateri', to: 'materis#create'
  get 'materiIPA', to: 'materis#materiIPA'
  get 'materiIPS', to: 'materis#materiIPS'
  get 'materiBahasa', to: 'materis#materiBahasa'
  get 'materiIPA/:mapel', to: 'materis#showMateri'
  get 'materiIPS/:mapel', to: 'materis#showMateri'
  get 'materiBahasa/:mapel', to: 'materis#showMateri'
  get 'list', to: 'materis#list'
  get 'edit_file/:id', to: 'materis#editMateri', as: :file
  post 'edit_file/:id', to: 'materis#update'
  delete 'edit_file/:id', to: 'materis#delete'

  get 'tambahsoal' , to: 'soals#new'
  post 'tambahsoal', to: 'soals#create'
  get 'listSoal', to: 'soals#list'
  get 'edit_soal/:id', to: 'soals#editSoal', as: :soal
  post 'edit_soal/:id', to: 'soals#update'
  delete 'edit_soal/:id', to: 'soals#delete'
  get 'simulasiIPA/:mapel', to: 'soals#pretest', as: :simulasi
  post 'simulasiIPA/:mapel', to: 'soals#cekpretest'
  get 'simulasiIPS/:mapel', to: 'soals#pretest'
  post 'simulasiIPS/:mapel', to: 'soals#cekpretest'
  get 'simulasiBahasa/:mapel', to: 'soals#pretest'
  post 'simulasiBahasa/:mapel', to: 'soals#cekpretest'
  #post 'cek', to: 'soals#cek'
  get 'pretest', to: 'soals#pretest'
  post 'pretest', to: 'soals#cekpretest'
  get 'finishtest', to: 'soals#finishTest'
  post 'finishtest', to: 'soals#submit'
end

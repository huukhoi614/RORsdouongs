Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :khuyenmais
      resources :sanphams
      resources :ctsphams
      resources :chonthems
      resources :dathangs
      resources :cuahangs
      resources :khachhangs
      resources :auths
      resources :ctkhuyenmais
    end
  end

  resources :quatangs
  resources :khuyenmais
  
  resources :dasboard
  get 'thongke/index'
  get 'thongke/theongay'
  get 'thongke/theothang'
  resources :ct_sp_ches
  resources :dathangs
  get 'ctchonthems/index'
  get 'ctchonthems/edit'
  get 'ctchonthems/show'
  get 'ctchonthems/new'
  get 'taikhoan/giaodien'
  get 'home/trangchu'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :sanphams
  resources :khachhangs
  root 'dasboard#index'
  get 'sanpham/showtheosize'=> 'sanphams#showtheosize'
  
    get 'home' => 'home#trangchu'
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

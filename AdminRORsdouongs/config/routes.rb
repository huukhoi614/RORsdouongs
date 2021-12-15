Rails.application.routes.draw do
<<<<<<< HEAD
 
=======
  
>>>>>>> 9369b32ab0e5f697c1640786def70003ec19defa
  resources :khuyenmais
  resources :ctkhuyenmais

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
  
    controller :sessions do
        get 'login' => :new
        post 'login' => :create
        delete 'logout' => :destroy
    end
  namespace :api do
    namespace :v1 do
      resources :loaisps
      resources :sanphams
      resources :ctsphams
      resources :cuahangs
      resources :sizes
      resources :chonthems
      resources :bangiums
      resources :khachhangs
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

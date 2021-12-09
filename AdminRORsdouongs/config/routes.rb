Rails.application.routes.draw do
  
  allow do
    origins 'localhost:3000', '127.0.0.1:3000',
            /\Ahttp:\/\/192\.168\.0\.\d{1,3}(:\d+)?\z/
            # regular expressions can be used here

    resource '/file/list_all/', :headers => 'x-domain-token'
    resource '/file/at/*',
      methods: [:get, :post, :delete, :put, :patch, :options, :head],
      headers: 'x-domain-token',
      expose: ['Some-Custom-Response-Header'],
      max_age: 600
      # headers to expose
  end
  
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

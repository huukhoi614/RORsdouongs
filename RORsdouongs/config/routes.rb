Rails.application.routes.draw do
  get 'taikhoan/giaodien'
  get 'home/trangchu'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :sanphams
  resources :khachhangs
  root 'sanphams#index'
  get 'sanpham/showtheosize'=> 'sanphams#showtheosize'
  
    get 'home' => 'home#trangchu'
  
    controller :sessions do
        get 'login' => :new
        post 'login' => :create
        delete 'logout' => :destroy
    end
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

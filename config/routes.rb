Rails.application.routes.draw do
 root 'pages#index', as: 'home'

 get 'about' => 'pages#about', as: 'about'
 get 'contact' => 'pages#contact', as: 'contact'
 get 'vocabulary' => 'pages#vocabulary', as: 'vocabulary'
 get 'schedule' => 'pages#schedule', as: 'schedule'
 get 'doc' => 'pages#doc', as: 'doc'
 get 'link' => 'pages#link', as: 'link'
 get 'kendo' => 'pages#kendo', as: 'kendo'
 get 'address' => 'pages#address', as: 'address'

  resources :posts
  resources :noveltys
  resources :pictures, only: [:create, :destroy]

end

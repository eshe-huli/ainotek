Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  get 'categories/update'
  get 'categories/destroy'
  get 'categories/new'
  get 'categories/edit'
  get 'ctegories/resource'
  root 'pages#home'
  get '/about', to: 'about#index'
  get 'contact', to: 'contact#index'
  resources :posts, :projects, :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

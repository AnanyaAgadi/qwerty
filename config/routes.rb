Rails.application.routes.draw do
  
  resources :products
  resources :users 
  resources :orders, only: [:index,:show,:create,:destroy]
  # Below is the dummy parameter checking 5.2 params
  root 'simple_pages#landing_page'
  # root 'products#index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/faq'
  get 'simple_pages/login'
  get 'simple_pages/thank_you'
  post 'simple_pages/thank_you'
  get 'simple_pages/rails/mailers/user_mailer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


 
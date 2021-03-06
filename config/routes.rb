Rails.application.routes.draw do
  
  devise_for :users

  resources :products do
    resources :comments
  end
  
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

  delete 'products/product_path'
  

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


 
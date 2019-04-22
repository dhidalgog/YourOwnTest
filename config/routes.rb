Rails.application.routes.draw do
  resources :questions
  resources :categories
  devise_for :users
  scope "/admin" do
    resources :users
  end
  
  resources :evaluations
  resources :roles

  root to: 'evaluations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

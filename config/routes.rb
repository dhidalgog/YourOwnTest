Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :categories
  devise_for :users
  scope "/admin" do
    resources :users
  end
  resources :questions_to_evaluate, only: :destroy
  resources :evaluations
  resources :roles

  root to: 'evaluations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

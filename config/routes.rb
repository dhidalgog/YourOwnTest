Rails.application.routes.draw do
  
  resources :courses
  resources :answers
  resources :questions
  resources :categories
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    :omniauth_callbacks => "users/omniauth_callbacks"
  }

  resources :questions_to_evaluate, only: :destroy
  resources :evaluations do
    get 'student_answers/new'
    post 'student_answers/create'
    get 'student_answers/result'

  end
  resources :roles

  root to: 'evaluations#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

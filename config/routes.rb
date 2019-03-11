Rails.application.routes.draw do
  devise_for :students
  root to: "questions#index"
  
  resources :question_options
  resources :questions
  resources :paths
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

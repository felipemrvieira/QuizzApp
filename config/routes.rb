Rails.application.routes.draw do
  resources :student_paths
  devise_for :students
  root to: "quizzes#index"
  
  resources :question_options
  resources :questions
  resources :quizzes
  resources :paths
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

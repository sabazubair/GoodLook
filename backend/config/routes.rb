Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get 'quizzes/new', to: 'quizzes#new'
      resources :quizzes
    end
  end
end

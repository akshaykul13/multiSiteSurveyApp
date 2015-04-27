Rails.application.routes.draw do
  devise_for :users, :skip => :registrations
  resources :surveys do
    resources :questions do
    end
    resources :response_groups, only: [:new, :create]
    post 'questions_order'
    get 'results'
  end
  post '/surveys/search_surveys'
  root :to => redirect('/surveys')
end

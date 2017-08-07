Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "questions#index"

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  concern :commentable do
    resources :comments, only: [:create, :new, :destroy]
  end

  concern :voteable do
    resources :votes, except: [:index, :show]
  end

  resources :questions, concerns: [:commentable, :voteable] do
    resources :answers, concerns: [:commentable, :voteable], expect: [:index, :show]
  end


end

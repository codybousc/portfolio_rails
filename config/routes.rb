Rails.application.routes.draw do

  devise_for :admins
  root :to => "coding_skills#index"

  devise_for :users
  resources :coding_skills do
    resources :projects
  end

  resources :posts do
    resources :comments
  end

  resources :recommendations
end

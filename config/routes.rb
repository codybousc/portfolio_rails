Rails.application.routes.draw do


  root :to => "coding_skills#index"
  devise_for :users
  resources :posts
  resources :coding_skills do
    resources :projects
  end

  resources :recommendations
end

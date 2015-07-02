Rails.application.routes.draw do
  resources :coding_skills do
    resources :projects

  end
end

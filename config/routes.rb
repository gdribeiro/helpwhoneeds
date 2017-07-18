Rails.application.routes.draw do
  resources :search_projects
  devise_for :users
  resources :users, only: [:show]
  resources :projects do
  	resources :projects_donations
  end


  resources :charities, only: [:show, :index] do
    resources :donations
  end

  root to: "pages#home"

  get 'user_home', to: "pages#user_home"
  get 'charity_home', to: "pages#charity_home"
  get 'ranking', to: "pages#ranking"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

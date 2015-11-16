Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }, path: '', path_names: { sign_up: "signup", sign_in: "login" }
  
  root 'events#index'

  resources :events do
    collection do
      get :date
      get :preview
    end
    member do
      get :event_info
    end
  end
end

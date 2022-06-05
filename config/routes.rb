Rails.application.routes.draw do
  root "pages#home"

  get "/ueber-ines", to: "pages#ines"
  get "/ueber-wildnisschule-wurzelholz", to: "pages#wurzelholz"

  resources :locations, :users, :equipment_lists, :posts

  get '/sign_up', to: 'users#new', as: :sign_up

  resources :sessions, only: [:new, :create, :destroy]
  get '/log_in', to: 'sessions#new', as: :log_in
  get '/log_out', to: 'sessions#destroy', as: :log_out


  resources :seminar_types do
    resources :seminar_instances do
      resources :seminars do
        resources :bookings
      end
    end
  end
end

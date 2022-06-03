Rails.application.routes.draw do
  root "pages#home"

  get "/ueber-ines", to: "pages#ines"

  resources :locations
  resources :seminar_types do
    resources :seminar_instances do
      resources :seminars do
        resources :bookings
      end
    end
  end
end

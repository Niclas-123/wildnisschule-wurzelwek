Rails.application.routes.draw do
  root "pages#home"

  resources :seminar_types, :locations
  resources :seminar_instances do
    resources :seminars
  end
end

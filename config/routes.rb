Rails.application.routes.draw do
  root "pages#home"
  #static pages
  get "/ueber-ines", to: "pages#ines"
  get "/ueber-wildnisschule-wurzelholz", to: "pages#wurzelholz"
  get "/seminar-infos", to: "pages#seminar_infos"
  get "/gallerie", to: "pages#gallerie"
  get "/impressum", to: "pages#impressum"
  get "/datenschutz", to: "pages#datenschutz"

  #flat models
  resources :locations, path: 'orte'
  resources :equipment_lists, path: 'ausrüstungsliste'
  resources :posts, path: 'blog'
  resources :guestbook_entries, path: 'gästebuch'

  #user handeling
  resources :users
  get '/sign_up', to: 'users#new', as: :sign_up

  resources :sessions, only: [:new, :create, :destroy]
  get '/log_in', to: 'sessions#new', as: :log_in
  get '/log_out', to: 'sessions#destroy', as: :log_out

  #nested Routes for Seminars
  resources :seminar_types, only: :index, path: 'angebot'
  resources :seminar_types, path: '', except: [:index] do

    resources :seminar_instances, only: [:index], path: 'veranstaltungen'
    resources :seminar_instances, path: '', except: [:index] do

      resources :seminars, path: '', except: :index do
        get '/send_mail', to: 'seminars#send_mail'
        get '/account_abfrage', to: 'bookings#account_abfrage'
        resources :bookings, path: 'buchung' do
          get '/confirmation', to: 'bookings#confirmation'
          #stripe
          post '/stripe_checkout', to: 'stripe#create'
          get '/stripe_sucess', to: 'stripe#sucess'
          get '/stripe_failure', to: 'stripe#failure'
          #paypal
          post :create_order, to: 'paypal#create_order'
          post :capture_order, to: 'paypal#capture_order'
        end
      end
    end
  end
end

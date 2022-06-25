Rails.application.routes.draw do

  root "root#home"

  resources :sessions, only: [:new, :create, :destroy]
  get '/log_in', to: 'sessions#new', as: :log_in
  get '/log_out', to: 'sessions#destroy', as: :log_out

  #admin dashboard
  namespace :admin, path: 'admin' do
    root to: 'users#show'
    resources :users
    #nested Routes for Seminars
    resources :seminar_types do
      resources :seminar_instances do
        resources :seminar_contents
        resources :seminars do
          get '/send_mail', to: 'seminars#send_mail'
          resources :bookings
        end
      end
    end
  end

  #for users
  namespace :frontend, path: '/' do
    root to: "root#home"

    #user handeling
    resources :users
    get '/sign_up', to: 'users#new', as: :sign_up

    #static pages
    get "/ueber-ines", to: "pages#ines"
    get "/ueber-wildnisschule-wurzelholz", to: "pages#wurzelholz"
    get "/seminar-infos", to: "pages#seminar_infos"
    get "/gallerie", to: "pages#gallerie"
    get "/impressum", to: "pages#impressum"
    get "/datenschutz", to: "pages#datenschutz"

    #flat models
    resources :locations, only: [:show], path: 'orte'
    resources :posts, only: [:show, :index], path: 'blog'
    resources :guestbook_entries, path: 'gästebuch'

    #nested Routes for Seminars
    resources :seminar_types, only: :index, path: 'angebot'
    resources :seminar_types, path: '', except: [:index] do

      resources :seminar_instances, only: [:index], path: 'veranstaltungen'
      resources :seminar_instances, path: '', except: [:index] do

        resources :seminars, path: '', except: :index do
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
end

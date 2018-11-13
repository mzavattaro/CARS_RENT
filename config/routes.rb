Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/mybookings", to: "bookings#my_bookings"
  get "/rentyourcar", to: "bookings#rent_your_car"
  patch "/mybookings/:booking_id", to: "bookings#update"

  resources :cars do
    member do 
      get "booking", to: "bookings#create"
    end
  end
 
end

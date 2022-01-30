Rails.application.routes.draw do
  resources :rental_items
  resources :rentals
  resources :invoice_items
  resources :invoices
  resources :booking_items
  resources :bookings
  resources :insurances
  resources :technical_visits
  resources :consumptions
  resources :odometers
  resources :maintenance_types
  resources :maintenances
  resources :providers
  resources :customers
  resources :drivers
  resources :engines
  resources :engine_categories
  resources :parks
  resources :insurers
  resources :profiles
  devise_for :users
  resources :permission_items
  resources :permissions
  resources :features
  resources :roles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

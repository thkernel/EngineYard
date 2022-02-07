Rails.application.routes.draw do
  resources :notifications
  resources :locations do   
    get "delete" 
  end

  resources :activity_logs do   
    get "delete" 
  end

  resources :customers do   
    get "delete" 
  end

  resources :drivers do   
    get "delete" 
  end

  resources :expenses do   
    get "delete" 
  end
  resources :bookings do   
    get "delete" 
  end
  resources :rentals do   
    get "delete" 
  end
  resources :orders do   
    get "delete" 
  end

  resources :invoices do   
    get "delete" 
  end
  resources :expense_types, path: "expense-types" do   
    get "delete" 
  end
  resources :maintenances do   
    get "delete" 
  end
  resources :consumptions do   
    get "delete" 
  end
  resources :intervention_types do   
    get "delete" 
  end
  resources :maintenance_types, path: "maintenance-types" do   
    get "delete" 
  end
  resources :vehicle_models do   
    get "delete" 
  end
  resources :odometers do   
    get "delete" 
  end
  
  resources :technical_visits do   
    get "delete" 
  end
  resources :insurances do   
    get "delete" 
  end
  resources :insurers do   
    get "delete" 
  end 
  resources :incidents do   
    get "delete" 
  end
  resources :parks do   
    get "delete" 
  end
  resources :engines do   
    get "delete" 
  end
  resources :engine_categories, path: "engine-categories" do   
    get "delete" 
  end
  resources :profiles do   
    get "delete" 
  end
  resources :permission_items do   
    get "delete" 
  end
  resources :permissions do   
    get "delete" 
  end
  resources :features do   
    get "delete" 
  end
  resources :roles do   
    get "delete" 
  end
  #root to: "front#home"

  get "/dashboard" => "dashboard#index", as: :dashboard
  resources :profiles do   
    get "delete" 
  end
  resources :permission_items do   
    get "delete" 
  end
  resources :permissions do   
    get "delete" 
  end
  resources :features do   
    get "delete" 
  end
  resources :roles do   
    get "delete" 
  end

  scope "account" do 
    resources :profiles 
    get "profile/:uid" => "profiles#edit", as: :edit_account
  end

  
  get "/users"     => "custom_users#index", as: :all_users 
  get "/users/unregistered"     => "custom_users#unregistered", as: :unregistered_commission_percentage 
  post "/users/new"     => "custom_users#create", as: :create_user
  get "/users/new"     => "custom_users#new", as: :new_user
  get "/user/edit/:uid" => "custom_users#edit", as: :edit_user
  patch "/user/update/:uid" => "custom_users#update", as: :update_user
  delete "/user/destroy/:uid" => "custom_users#destroy", as: :destroy_user
  get "/user/delete/:uid" => "custom_users#delete", as: :delete_user


  
  get "/user/enable/:uid" => "custom_users#get_enable", as: :get_enable_user_account
  post "/user/enable/:uid" => "custom_users#post_enable", as: :post_enable_user_account
  get "/user/disable/:uid" => "custom_users#get_disable", as: :get_disable_user_account
  post "/user/disable/:uid" => "custom_users#post_disable", as: :post_disable_user_account

  get "utilities/backup" => "utilities#show_backup", as: :show_backup
  post 'utilities/backup' => "utilities#backup_database", as: :backup_database


  devise_for :users, path: '', controllers: { 
    registrations: "users/registrations",
    confirmations: 'users/confirmations',
    passwords: "users/passwords",
    sessions: "users/sessions"
        
    }, 
    path_names: {
        sign_in: 'login', 
        sign_out: 'logout', 
        password: 'secret', 
        confirmation: 'verification', 
        unlock: 'unblock', 
        registration: 'signup', 
        sign_up: '' 
    }
   
    devise_scope :user do
      root to: "users/sessions#new"
      authenticated :user do
        root 'dashboard#index', as: :authenticated_root
      end
  
      unauthenticated do
        root 'users/sessions#new', as: :unauthenticated_root
      end
    end


    # Dynamic error pages
    get "/404", to: "errors#not_found"
    get "/422", to: "errors#unacceptable"
    get "/500", to: "errors#internal_error"

    #mount Ckeditor::Engine => '/ckeditor'
  # For mobile API Endpoint
  #mount API::Base, at: "/"
end

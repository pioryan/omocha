Omocha::Application.routes.draw do
  get "registrations/create"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users,  :controllers => { :registrations => "registrations" }
  devise_scope :user do
    get "users/sign_out",:to => "devise/sessions#destroy"
  end
  
  match 'users/:id' => 'users#show'
        
  root :to => "home#index"
end

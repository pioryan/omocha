Omocha::Application.routes.draw do

  get "authentications/create"

  get "registrations/create"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  wiki_root '/wiki'

  devise_for :users,  :controllers => { :registrations => "registrations" }
  devise_scope :user do
    get "users/sign_out",:to => "devise/sessions#destroy"
  end

  match '/users/auth/:provider/callback', to: 'authentications#create'
       
  match 'users/:id' => 'users#show'
        
  root :to => "home#index"
end

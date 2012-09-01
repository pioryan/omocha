Omocha::Application.routes.draw do
  get "registrations/create"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users
  devise_scope :user do
    get "users/sign_out",:to => "devise/sessions#destroy"
  end
  root :to => "home#index"
end

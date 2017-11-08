Rails.application.routes.draw do

  # get 'customers/alphabetized'
  # get 'customers/missing_email', to: 'customers#missing_email', as: 'missing_email_customers'
  resources :customers do
    collection do
      get 'alphabetized'
      get 'missing_email'
    end
  end

  root to: 'customers#index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

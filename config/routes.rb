Rails.application.routes.draw do
  root to: 'customers#index'

  # get 'customers/alphabetized'
  resources :customers do
    collection do
      get 'alphabetized'
    end
  end

  get 'customers/missing_email', to: 'customers#missing_email'
  # resources :customers do
  #   collection do
  #     get 'missing_email'
  #   end
  # end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

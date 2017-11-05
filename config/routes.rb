Rails.application.routes.draw do
  get 'customers/index'

  get 'customers/alphabetized'

  get 'customers/missing_email'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

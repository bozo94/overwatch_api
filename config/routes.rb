Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '/api' do
    resources :heros, only: [:index, :show] do 
      member do 
        get :abilities
      end
    end
    resources :abilities, only: [:index, :show]
    
  end
end

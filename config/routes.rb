Rails.application.routes.draw do

  namespace :api do
    resources :articles
  end

  scope :api, defaults: { format: :json } do
    devise_for :users
  end



  localized do

    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

    mount ActionCable.server => '/cable'

    root to: 'visitor#index'

    resources :articles

    namespace :account do
      resources :conversations, only: [:index, :create] do
        resources :messages, only: [:index, :create]
      end
    end

    devise_for :users
  end
end

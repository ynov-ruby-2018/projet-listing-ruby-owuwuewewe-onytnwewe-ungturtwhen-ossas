Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount ActionCable.server => '/cable'

  localized do
    root to: 'visitor#index'

    resources :articles

    devise_for :users
  end
end

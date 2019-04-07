Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  localized do

    mount ActionCable.server => '/cable'

    root to: 'visitor#index'

    resources :articles

    devise_for :users
  end
end

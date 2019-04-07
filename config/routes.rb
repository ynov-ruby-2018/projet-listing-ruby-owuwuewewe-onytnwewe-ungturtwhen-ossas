Rails.application.routes.draw do

  localized do

    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    
    mount ActionCable.server => '/cable'

    root to: 'visitor#index'

    resources :articles

    devise_for :users
  end
end

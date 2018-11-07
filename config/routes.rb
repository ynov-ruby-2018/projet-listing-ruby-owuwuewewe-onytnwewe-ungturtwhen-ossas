Rails.application.routes.draw do
  localized do
    root to: 'visitor#index'
  end
end

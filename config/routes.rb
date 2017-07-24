Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :events do
    resources :attendees
  end
end

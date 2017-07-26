Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "home#index"
  get '/events/:id/send_invites', :to => 'events#send_invites', :as => :send_invites
  resources :events do
    resources :attendees
  end


end

Rails.application.routes.draw do



  devise_for :users, :controllers => { :registrations => "user/registrations"}
  root 'welcome#index'
  resources :user_stocks, except: [:show, :edit, :update]
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"

  get 'my_friends', to: "users#my_friends"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"



end

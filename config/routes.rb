Rails.application.routes.draw do
  root 'home#index'

  resources :b_lists do
    resources :items
  end

  devise_for :users, controllers: {registrations: 'users/registrations'}

end

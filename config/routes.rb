Rails.application.routes.draw do
  get 'items/index'

  get 'items/show'

  get 'items/new'

  get 'b_lists/index'

  get 'b_lists/show'

  get 'b_lists/new'

  root 'home#index'

  devise_for :users

end

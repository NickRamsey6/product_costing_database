Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'stores#index'
  resources :stores do
    collection { post :import }
    resources :products
  end
end

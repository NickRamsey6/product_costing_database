Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'stores#index'
  resources :stores do
    resources :weeks do
      collection { post :import }
      end
    end
  resources :weeks do
    resources :days do
      collection { post :import }
    end
  end
end

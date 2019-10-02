Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'overall#index'
  resources :masters do
    collection { post :import }
  end

get '/newcastle' => 'new_castle#index'
get '/mercerisland' => 'mercer_island#index'
get '/tigermountain' => 'tiger_mountain#index'
get '/issaquah' => 'issaquah#index'
get '/master' => 'master#index'
end

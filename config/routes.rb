Rails.application.routes.draw do
  resources :countries
  root "eucountries#home"

  get '/eucountries' => 'eucountries#index'
end

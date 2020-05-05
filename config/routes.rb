Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do
    resources :preferences, only: [:index]
    resources :artists, only: [:new]
    resources :songs, only: [:new]
  end

end

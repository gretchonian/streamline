Rails.application.routes.draw do
  root "streamline#index"
  resources :contacts, only: [:new, :create]

end

Rails.application.routes.draw do
  resources :builds

  root "builds#new"
end

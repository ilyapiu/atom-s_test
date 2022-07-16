Rails.application.routes.draw do
  root "orders#index"
  resources :orders
  resources :workers
  resources :categories do
    resources :services, except: %i[new show]
  end
end

Rails.application.routes.draw do

  namespace :admin do
  get 'cars/index'
  end

  namespace :admin do
  get 'cars/new'
  end

  namespace :admin do
  get 'cars/create'
  end

  namespace :admin do
  get 'cars/update'
  end

  namespace :admin do
  get 'cars/edit'
  end

  namespace :admin do
  get 'cars/show'
  end

  namespace :admin do
  get 'airs/index'
  end

  namespace :admin do
  get 'airs/new'
  end

  namespace :admin do
  get 'airs/create'
  end

  namespace :admin do
  get 'airs/update'
  end

  namespace :admin do
  get 'airs/edit'
  end

  namespace :admin do
  get 'airs/show'
  end

  namespace :admin do
  get 'buses/index'
  end

  namespace :admin do
  get 'buses/new'
  end

  namespace :admin do
  get 'buses/create'
  end

  namespace :admin do
  get 'buses/update'
  end

  namespace :admin do
  get 'buses/edit'
  end

  namespace :admin do
  get 'buses/show'
  end

  namespace :admin do
  get 'trains/index'
  end

  namespace :admin do
  get 'trains/new'
  end

  namespace :admin do
  get 'trains/create'
  end

  namespace :admin do
  get 'trains/update'
  end

  namespace :admin do
  get 'trains/edit'
  end

  namespace :admin do
  get 'trains/show'
  end

  namespace :admin do
  get 'hotels/index'
  end

  namespace :admin do
  get 'hotels/new'
  end

  namespace :admin do
  get 'hotels/create'
  end

  namespace :admin do
  get 'hotels/update'
  end

  namespace :admin do
  get 'hotels/edit'
  end

  namespace :admin do
  get 'hotels/show'
  end

  root 'home#index'

  namespace :admin do
    resources :travel_orders
    resources :hotels, :airs, :trains, :buses, :cars
    resources :rooms, :air_prices, :train_prices, :bus_prices, :car_prices
  end

  resources :travel_orders

  get 'alipay_notify', to: 'travel_orders#alipay_notify'
  namespace :users do
    get 'profile', to: 'accounts#show'
    get 'info', to: 'accounts#index'
  end

  devise_for :users,
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      sign_up: 'register' },
    controllers: {
      confirmations: 'users/confirmations',
      passwords:     'users/passwords',
      registrations: 'users/registrations',
      sessions:      'users/sessions',
      unlocks:       'users/unlocks' }

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

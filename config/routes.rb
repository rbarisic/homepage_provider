HomepageProvider::Application.routes.draw do

  resources :accounts do
    resource :homepage
  end
  match '/accounts/:id/homepage', to: 'homepages#show', via: 'get', as: 'show_account_homepage'

  match '/homepage/:id', to: 'homepages#show', via: 'get', as: 'show_homepage'
  match '/homepages/', to: 'homepages#index', via: 'get'
# root element based on authentication status
#--------------------------------------------------------------

  authenticated :user do
    root to: 'accounts#index', as: :authenticated_root
  end

  unauthenticated do
      root :to => 'welcome#index'
      match '/learn_more', to: 'welcome#learn', via: 'get'
  end
#--------------------------------------------------------------

# devise routes
#--------------------------------------------------------------

  devise_for :users
#--------------------------------------------------------------

# static routes
#--------------------------------------------------------------

  get "welcome/help"
#--------------------------------------------------------------
  


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   reso1/newurces :products

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
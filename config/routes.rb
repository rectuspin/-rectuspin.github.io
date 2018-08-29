Rails.application.routes.draw do
  
  root "liverpool#index"
  get '/liverpool/index'=>'liverpool#index'
  get '/liverpool/new'=>'liverpool#new' 
  
  post '/liverpool/create' => 'liverpool#create' , as: 'liverpool_create'
  
  
  get '/liverpool/destroy/:list_id' => 'liverpool#destroy'
  
  get '/liverpool/edit/:list_id' => 'liverpool#edit' , as: 'liverpool_edit'
  
  
  post '/liverpool/update/:list_id' =>'liverpool#update'
  
  
  get '/liverpool/guest_new'=>'liverpool#guest_new'
  
  post '/liverpool/guest_create' => 'liverpool#guest_create'
  
  
  get '/liverpool/guest_destroy/:guest_id' => 'liverpool#guest_destroy'
  
  get '/liverpool/guest_edit/:guest_id' => 'liverpool#guest_edit'
  
  
  
  
  
  post '/liverpool/guest_update/:guest_id' =>'liverpool#guest_update'
  
  
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

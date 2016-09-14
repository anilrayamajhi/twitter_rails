Rails.application.routes.draw do
  root 'tweets#index'


  #all photoes:
  get '/tweets' => 'tweets#index', as: 'tweets'

  #show a new photo form:
  get '/tweets/new' => 'tweets#new', as: 'new_tweet'

  #a single photo:
  # get ({'/photos/:id' => 'photos#show', 'as' => 'photo'}) #same as below
  get 'tweets/:id' => 'tweets#show', as: 'tweet'

  #save new photo to database
  get '/tweets/' => 'tweets#show'
  #execute on post event

  #save new photo to database
  post '/tweets/' => 'tweets#create'

  #show an edit photo form
  get '/tweets/:id/edit' => 'tweets#edit', as: 'edit_tweet'

  #update existing photo in database
  patch '/tweet/:id' => 'tweets#update'

  #delete a photo
  delete '/tweet/:id' => 'tweets#destroy', as: 'destroy_tweet'
  #use destroy coz delete is rails method and destroy is ruby method, name wont conflict

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

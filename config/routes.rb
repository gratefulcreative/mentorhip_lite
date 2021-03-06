MentorhipLite::Application.routes.draw do
 
  devise_for :users
  
  resources :users
  get 'users/:id' => 'users#show'

  #get "users/:id"

  resources :courses 

  root to: "courses#index"

  match '/s' => 's#index', :via => [:get], :as => '/s/'


  get 'courses/search' => 'courses#search', :as => :courses_search

 #get '/courses/:course_type', to: 'courses#search'

 

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

# Created by Shantanu on 4/15/16 as the routes file/index routes
# Modified by Griffin Solimini on 4/17/16 and 4/19/16 to add routes for the
# messages and listings views

Rails.application.routes.draw do

  devise_for :users
  get 'main/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'main#index'
   get 'listing/list'
   get 'listing/mylist'
   get 'listing/show'
   get 'listing/new'
   get 'listing/edit'
   get 'listing/delete'
   get 'listing/update'
   get 'listing/message'

   post 'listing/post-message'
   post 'listing/create'
   patch 'listing/update'

   get 'messages/list'
   get 'messages/show'
   get 'messages/delete'

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

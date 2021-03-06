Soma::Application.routes.draw do
  post "users" => 'users#create'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  post 'app_auth' => 'application#auth'
  get 'blood-tests' => 'blood_tests#index', as: :blood_tests
  get 'blood-tests/new' => 'blood_tests#new', as: :new_blood_test
  post 'blood-tests' => 'blood_tests#create'
  post 'blood-tests/remote' => 'blood_tests#create_remote', as: :create_remote_blood_test
  get 'blood-tests/legend'=> 'blood_tests#legend', as: :blood_tests_legend
  get 'blood-tests/results'=> 'blood_tests#all_results', as: :blood_tests_all_results
  get 'blood-tests/dangerous_results'=> 'blood_tests#all_dangerous_results'
  get 'blood-tests/results/:name'=> 'blood_tests#results_by_testname'
  get 'blood-tests/:id' => 'blood_tests#show', as: :blood_test
  get 'blood-tests/:id/edit' => 'blood_tests#edit', as: :edit_blood_test
  patch 'blood-tests/:id' => 'blood_tests#update', as: :update_blood_test
  delete 'blood-tests/:id' => 'blood_tests#destroy', as: :delete_blood_test

  get 'blood-tests/users/:id' => 'blood_tests#user_index'
  get 'blood-tests/users/:id/dangerous-results' => 'blood_tests#user_dangerous_results'
  get 'blood-tests/users/:id/:name' => 'blood_tests#user_results_by_testname'

  # You can have the root of your site routed with "root"
  root 'dashboard#index'

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

StyleSearch3::Application.routes.draw do

  resources :users 

  namespace "users" do
  resources :men, :type => "Men"
  resources :women, :type => "Women"
end

  root :to => "users#index"

  namespace "women" do
    resources :women_categories
  end

  namespace "men" do
    resources :men_categories
  end

  namespace "women_categories" do
    resources :w_formal, :type => "W_Formal"
    resources :w_work, :type => "W_Work"
    resources :w_casual, :type => "W_Casual"
  end

  resources :wformalitems
  resources :wworkitems
  resources :wcasualitems

  resources :mformalitems
  resources :mworkitems
  resources :mcasualitems

  match '/page2' => 'wformalitems#page2'
  match '/page3' => 'wformalitems#page3'
  match '/page4' => 'wformalitems#page4'

  match '/red' => 'colors#red'
  match '/green' => 'colors#green'
  match '/purple' => 'colors#purple'

  match '/red_work' => 'colors#red_work'
  match '/green_work' => 'colors#green_work'
  match '/purple_work' => 'colors#purple_work'

  match '/red_casual' => 'colors#red_casual'
  match '/green_casual' => 'colors#green_casual'
  match '/purple_casual' => 'colors#purple_casual'

  match '/mred' => 'colors#mred'
  match '/mgreen' => 'colors#mgreen'
  match '/mpurple' => 'colors#mpurple'

  match '/mred_work' => 'colors#mred_work'
  match '/mgreen_work' => 'colors#mgreen_work'
  match '/mpurple_work' => 'colors#mpurple_work'

  match '/mred_casual' => 'colors#mred_casual'
  match '/mgreen_casual' => 'colors#mgreen_casual'
  match '/mpurple_casual' => 'colors#mpurple_casual'
  




  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

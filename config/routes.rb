GankaoSeason3::Application.routes.draw do

  resources :videos do
    member do
    end
  end
  resources :skills do
    collection do
      post :like_blog,:search_blog
      get :search_result
    end
  end

  resources :logins
  resources :similarities
  resources :plans do
    collection do
      post :show_chapter
    end
  end
  resources :skills
  resources :learn do
    collection do
      get :word_step_one,:next_sentence,:listen
    end
  end

  resources :questions,:only=>[:index]
  match "questions/answered" =>'questions#answered'
  match "questions/unanswered" =>'questions#unanswered'
  match "questions/ask" =>'questions#ask'
  match "questions/answers" =>'questions#answers'
  match "questions/search" =>'questions#show_result'
  match "questions/saveanswer"=>'questions#save_answer'
  match "questions/askquestion"=>'questions#ask_question'

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
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

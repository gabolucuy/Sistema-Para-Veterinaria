Rails.application.routes.draw do


  get '/ventas/:id/cambiar' => 'venta#cambiar'
  get 'atencions/:id/asignar_mascota'=>'atencions#asignar_mascota'
  get '/clientes/:id/ventas' => 'clientes#ventas'
  
  get '/mascota/:id/atenciones' => 'mascota#atenciones'

  get '/clientes/buscar' => 'clientes#buscar'
  get '/mascota/buscar' => 'mascota#buscar'
  get '/veterinarios/buscar' => 'veterinarios#buscar'
  get '/clientes/:id/ventas' => 'clientes#ventas'
  get '/prodcutos/:id/modificar' => 'prodcutos#modificar'
  get '/prodcutos/:id/reabastecer' => 'prodcutos#reabastecer'
  get '/turnos/:id/atendiendo' => 'turnos#atendiendo'
  get '/turnos/:id/atendido' => 'turnos#atendido'

  get 'welcome/index'
  get 'veterinaria'=> 'welcome#index'
  get 'About'=> 'welcome#about'
  get 'Contact'=> 'welcome#contact'
  get 'contact/index'
  get 'about/index'
  resources :atencions
  resources :turnos
  resources :lists
  resources :venta
  resources :clientes
  resources :veterinarios
  resources :mascota
  resources :prodcutos
  resources :clientes



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'

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

Rails.application.routes.draw do
  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  root 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  get 'branding' => 'storefront#items_by_brand'

  get 'all_users' => 'products#all_users'

  get 'edit_user' => 'products#edit_user'


  devise_for :users
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

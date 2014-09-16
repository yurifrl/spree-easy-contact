Spree::Core::Engine.add_routes do

  namespace :admin do
    resources :contacts
    resources :topics
  end

  resources :contacts, :only => [:new, :create]

  get 'contact' => 'contacts#new'
end
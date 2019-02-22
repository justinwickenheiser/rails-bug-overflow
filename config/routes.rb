Rails.application.routes.draw do
  resources :users
	get 'welcome/index'
	
	resources :bugs
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root 'home#index'
end

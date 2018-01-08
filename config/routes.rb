Rails.application.routes.draw do

	root 'home#home'
	get 'listings/new' => 'posts#new'
	get 'listings' => 'posts#listings'
	post 'posts'=>'posts#create'
	get 'listings/show' => 'posts#show'
	post 'categories'=>'categories#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

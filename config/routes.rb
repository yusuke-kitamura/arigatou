Rails.application.routes.draw do
  devise_for :users
	root "homes#top"
	get 'about' => 'home#about'
	resources :posts, only: [:create, :index, :destroy]
	resources :favorites, only: [:create, :index, :destroy]
end

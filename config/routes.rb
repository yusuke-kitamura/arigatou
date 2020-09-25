Rails.application.routes.draw do
  devise_for :users
	root "homes#top"
	get 'about' => 'home#about'
	resources :post, only: [:create, :index, :destroy]
end

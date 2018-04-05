Rails.application.routes.draw do
  
  
  
  
	scope :api, defaults:{format: :json} do
	  resources :states, except: [:new, :edit]
	  resources :cities, except: [:new, :edit]
	  resources :bars, except: [:new, :edit]
      resources :foos, except: [:new, :edit]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	get '/ui' => 'ui#index'
  	get '/ui#' => 'ui#index'
  	root "ui#index"
end

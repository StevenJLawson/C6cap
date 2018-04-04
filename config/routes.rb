Rails.application.routes.draw do
  
	scope :api, defaults:{format: :json} do
	  resources :bars, except: [:new, :edit]
      resources :foos, except: [:new, :edit]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do 
	get 'trucks/brooklyn' => 'trucks#brooklyn#:action '
	#get 'trucks/me' => 'trucks#searchs#:action', :as => 'search_trucks'
	resources :trucks do
		resources :meals do
			collection do
				get :cheap
			end
		end
		
	end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#end



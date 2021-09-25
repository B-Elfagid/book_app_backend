Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  resources :categories
  resources :reviews

   resources :users do
    resources :books do
      resources :reviews
    end 
  end 
   
    resources :books do
     resources :reviews
  end 

  resources :categories do
    resources :books
  end 

end

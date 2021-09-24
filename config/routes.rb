Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  resources :categories

   resources :users do
    resources :books
  end 
   
    resources :books do
     resources :reviews
  end 

end

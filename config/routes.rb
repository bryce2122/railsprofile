Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get "/"  => "home#index"

devise_scope :user do 
get     "/users/:id"     => 'registrations#show' , as: "user"
get '/users/edit/:id' =>    'registrations#edit', as: "edit"
end

post "/create" => 'users#create', as: "create_user"

post "delete" => 'relationships#delete'



resources :posts
resources :comments
resources :users
resources :relationships 

end
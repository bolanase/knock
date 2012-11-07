Knock::Application.routes.draw do
  root :to => 'Products#index'
  
  resources :products

  get "/hi" => 'Person#hello'
  get "/my_name_is/:name" => 'Person#introduce'
  get "/bye" => 'Person#goodbye'
end

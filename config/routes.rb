HomecanvasrBeta::Application.routes.draw do
  root :to => 'subscribers#index'
  resources :subscribers

  match "/survey" => "subscribers#survey"
  
end

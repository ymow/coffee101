Coffee101::Application.routes.draw do
 # get "pages/price"

  devise_for :users



  root :to => 'high_voltage/pages#show', :id => 'welcome'
   match '/price', to: 'pages#price'
    match '/want', to: 'interested#want'
    match '/plan', to: 'pages#plan'
    match '/signup',  :to => 'users#new'
end

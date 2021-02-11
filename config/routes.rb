Rails.application.routes.draw do
  get 'expenses/index'

  get 'statistics/index'
  post '/import_statistics'=> 'statistics#import_statistics'
  post '/import_expenses'=> 'expenses#import_expenses'
  get '/esearch'=> 'expenses#esearch'
  

  devise_for :users

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

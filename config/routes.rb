Rails.application.routes.draw do
  root to: "static#index"

  get 'twitters/index'
  get 'mailjets/index'
  get '/scrap', to:'scrappers#scrapper', as: 'scrap'
  get '/mailer', to:'mailjets#mail', as: 'mailer'
  get '/twitter', to:'twitters#update_status', as: 'twitter'

  get "/landing1", to: "static#landing1"
  get "/landing2", to: "static#landing2"
  get "/landing3", to: "static#landing3"
  post "/subscribe1", to: "static#subscribe1"
  post "/subscribe2", to: "static#subscribe2"
  post "/subscribe3", to: "static#subscribe3"

  get "/newsletter", to: "static#newsletter"
  
  get "/done", to: "static#done"
end

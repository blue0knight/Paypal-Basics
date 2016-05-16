Rails.application.routes.draw do
  resources :registrations

  post "/hook" => "registrations#hook"
  post "/registrations/:id" => "registrations#show"

  get '/about_us' => 'pages#about_us'
  get '/contact_us' => 'pages#contact_us'
  get '/business_listings' => 'pages#business_listings'

  resources :courses

  root "courses#index"
end

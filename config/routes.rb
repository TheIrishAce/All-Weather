Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/edit'
  resources :blogposts do
    resources :comments
  end
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  resources :profiles
  devise_for :users
  get 'home/index'
  root to: "home#index"
  get 'rainfalls/index'
  get 'rainfalls/show'
  get 'rainfalls/new'
  get 'rainfalls/edit'
  resources :forecasts do
    resources :rainfalls
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

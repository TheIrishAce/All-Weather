Rails.application.routes.draw do
  resources :blogposts do
    resources :comments
  end
  resources :forecasts do
    resources :rainfalls
  end
  resources :profiles
  devise_for :users
  root to: "home#index"
  get 'comments/index', :action=>"index", :controller=>"comments"
  get 'comments/show', :action=>'show', :controller=>'comments'
  get 'comments/new', :action=>'new', :controller=>'comments'
  get 'comments/edit', :action=>'edit', :controller=>'comments'
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  #get 'home/index', :controller=>'weekdays', :action=>'day'
  get 'home/index'
  get 'rainfalls/index', :action=>'index', :controller=>'rainfalls'
  #post 'rainfalls/create', :action=>'create', :controller=>'rainfalls'
  get 'rainfalls/show', :action=>'show', :controller=>'rainfalls'
  #get 'rainfalls/show/:id/:forecast_id', :action=>'show', :controller=>'rainfalls'
  get 'rainfalls/new', :action=>'new', :controller=>'rainfalls'
  get 'rainfalls/edit', :action=>'edit', :controller=>'rainfalls'
  #post 'forecasts/:forecast_id/rainfalls/:id', :action=>'create', :controller=>'rainfalls' => as 
  #post '/checkprofanity', :controller=>'comments', :action=>'isprofanity'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get '/day', :controller=>'weekdays', :action=>'day'
  #post '/day', :controller=>'weekdays', :action=>'day'
  get 'blogpostsearch', to: "blogposts#search"
  get 'forecastsearch', to: "forecasts#search"

end

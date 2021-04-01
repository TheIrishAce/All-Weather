Rails.application.routes.draw do
  get 'comments/index', :action=>"index", :controller=>"comments"
  get 'comments/show', :action=>'show', :controller=>'comments'
  get 'comments/new', :action=>'new', :controller=>'comments'
  get 'comments/edit', :action=>'edit', :controller=>'comments'
  resources :blogposts do
    resources :comments
  end
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  resources :profiles
  devise_for :users
  get 'home/index', :controller=>'weekdays', :action=>'day'
  root to: "home#index"
  get 'rainfalls/index', :action=>'index', :controller=>'rainfalls'
  get 'rainfalls/show', :action=>'show', :controller=>'rainfalls'
  get 'rainfalls/new', :action=>'new', :controller=>'rainfalls'
  get 'rainfalls/edit', :action=>'edit', :controller=>'rainfalls'
  resources :forecasts do
    resources :rainfalls
  end
  post '/checkprofanity', :controller=>'comments', :action=>'isprofanity'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get '/day', :controller=>'weekdays', :action=>'day'
  #post '/day', :controller=>'weekdays', :action=>'day'

end

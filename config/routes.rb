Rails.application.routes.draw do
  get 'rainfalls/index'
  get 'rainfalls/show'
  get 'rainfalls/new'
  get 'rainfalls/edit'
  resources :forecasts do
    resources :rainfalls
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

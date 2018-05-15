Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end
  resources :comments
  



  get 'articles/create'

  get 'articles/new'

  get 'articles/show'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

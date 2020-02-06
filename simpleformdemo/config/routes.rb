Rails.application.routes.draw do
  resources :pages
  resources :chapters
  resources :books
  resources :students
  resources :courses
  
  get 'demo/demo1'

  get 'demo/demo2'

  get 'demo/demo3'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

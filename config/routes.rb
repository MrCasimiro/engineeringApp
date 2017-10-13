Rails.application.routes.draw do

  get 'profiles/show'

  get 'profile/show'

  get 'uipages/user_ui'
  get 'uipages/employee_ui'
  get 'uipages/admin_ui'

  get 'pages/home'
  get 'pages/main_ui'


  ##
  resources "contacts", only: [:new, :create]
  get '/contact', to: 'contacts#new', as: 'contact'

  get '/about', to: 'pages#sobre', as: 'about'
  get '/exercises', to: 'pages#exercicios', as: 'exercises' 
  get '/flexao', to: 'pages#flexao', as: 'flexao' 

  get '/squat', to: 'pages#squat', as: 'squat' 
  get '/burpee', to: 'pages#burpee', as: 'burpee' 
  
  #formulário de criação de treino
  get '/fworkouts', to: 'workouts#new', as: 'workouts'
  post '/fworkouts', to: 'workouts#create'
  resources :workouts
  
  get '/fdiet', to: 'foods#new', as: 'diet'
  resources :foods
  get '/fdiets', to: 'diets#new', as: 'diets'
  post '/fdiets', to: 'diets#create'
  resources :diets

  get '/gami', to: 'pages#gamification', as: 'gami'


  get   '/fexercise', to: 'exercises#new', as: 'fexercise'
  post  '/fexercise', to: 'exercises#create'
  resources :exercises

  #get '/user_ui', to: 'uipages#user_ui', as: 'user_ui'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  get   '/signup', to: 'people#new', as: 'signup'
  post  '/signup', to: 'people#create'

  resources :people
  resources :users
  resources :coaches

  get    '/login',   to: 'sessions#new', as: 'login'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :profiles
  resources :trainings, only: [:show]

  get 'coaches/show'
  get 'trainings/show'

end

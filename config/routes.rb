TeachersPet::Application.routes.draw do
  get "home/index"

  resources :courses, :except => [:show, :destroy] do
    resources :assignments, :only => [:edit]
  end

  resources :students, :only => [:new, :create, :index]
  resources :grades, :only => [:create]

  root :to => "home#index"
end

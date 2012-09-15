TeachersPet::Application.routes.draw do
  resources :classes, :only => [:new, :create]
end

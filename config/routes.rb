Rails.application.routes.draw do
  root 'homes#home'
  devise_for :teachers, controllers: { sessions: 'teachers/sessions', registrations: 'teachers/registrations' }
  post '/create_new_teacher', :to => 'teachers#create_new_teacher'
  resources :teachers
  devise_for :users, controllers: { sessions: 'users/sessions' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

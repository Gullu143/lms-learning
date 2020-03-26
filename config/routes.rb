Rails.application.routes.draw do
  root 'homes#home'
  devise_for :teachers, controllers: { sessions: 'teachers/sessions'}
  post '/create_new_teacher', :to => 'teachers#create_new_teacher'
  resources :teachers
  get 'my_courses', to: 'teachers#teacher_courses'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  devise_for :students, controllers: { sessions: 'students/sessions' }
  resources :courses
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

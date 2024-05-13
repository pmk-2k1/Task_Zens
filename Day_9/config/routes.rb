Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :users do
    resources :todo_lists
  end
  root 'todo_lists#index'
  get 'task_complete', to: 'todo_lists#task_complete'

  patch 'password', to: 'passwords#update'

  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

end

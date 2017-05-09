Rails.application.routes.draw do
  resources :faculties, path: 'faculty'
  resources :programs
  resources :universities
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

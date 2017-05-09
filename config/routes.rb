Rails.application.routes.draw do
  root to: 'users#show'

  resources :faculties, path: 'faculty'
  resources :programs
  resources :universities

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    unlocks: 'users/unlocks',
    confirmations: 'users/confirmations'
  }
end

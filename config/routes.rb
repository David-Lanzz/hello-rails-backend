Rails.application.routes.draw do
   resources :greetings, only: [:index,:random]
  root 'greetings#random'
end

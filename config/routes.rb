Rails.application.routes.draw do
  get 'messages/index'
  get 'conversations/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :conversations, only: [:index, :create] do
    resources :messages, only: [:index, :create] 
  end
end

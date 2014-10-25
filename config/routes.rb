Rails.application.routes.draw do
  mount Api::V1, at: '/api/v1'
  root 'hello#world'
  resources :customers
end

Rails.application.routes.draw dof your site routed with "root"
  mount Api::V1, at: '/api/v1'
  root 'hello#world'
  resources :customers
end

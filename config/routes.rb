Rails.application.routes.draw do
  get 'contacts/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'contacts#create'
  post 'contacts', to: 'contacts#create'

  # this route should be at the bottom always
  match "*path", to: "contacts#create", via: :all
end

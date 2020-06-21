Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root to: 'contacts#new'
    resources :contacts, only: [:new, :create]

    # this route should be at the bottom always
    match "*path", to: "contacts#new", via: :all
  end
end

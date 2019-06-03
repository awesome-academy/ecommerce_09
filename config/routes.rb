# frozen_string_literal: true

Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
    root "static_pages#home"

    get "/home", to: "static_pages#home"
    get "/contact", to: "static_pages#contact"
    get "/about", to: "static_pages#about"
    get "/signup", to: "users#new"
    resources :users
  end
end

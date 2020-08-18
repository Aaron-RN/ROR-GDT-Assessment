# frozen_string_literal: true

Rails.application.routes.draw do
  resources :musicians, only: %i[index create update]

  root 'musicians#index'
end

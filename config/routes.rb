require 'api_constraints'

Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    scope module: :v2,
      constraints: ApiConstraints.new(version: 2, default: false) do
        resources :movies
      end

    scope module: :v1,
      constraints: ApiConstraints.new(version: 1, default: true) do
        resources :movies
      end

  end
end

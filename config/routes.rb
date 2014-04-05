GistFeed::Application.routes.draw do
  resources :gists, only: [:index] do
    collection do
      get "feed"
    end
  end
  root "gists#index"
end

Rails.application.routes.draw do
  resources :users 
  resources :posts do
  collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #ルートurlはpostsコントローラーのindexを呼んでください
  root to: "posts#index"
end

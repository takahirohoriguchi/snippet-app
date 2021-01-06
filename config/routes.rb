Rails.application.routes.draw do
  get 'snippets/index'
  devise_for :users
  root to: "snippets#index"
  resources :snippets do 
    resources :input_summaries do
    end
  end

  resources :input_summaries do
    resources :templates
    member do
      get "template"
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :articles, only: [:index, :create, :show] do
    member do
      delete :destroy, to: 'articles#destroy'
      put :update, to: 'articles#update'
      patch :update, to: 'articles#patch'
    end
  end



end

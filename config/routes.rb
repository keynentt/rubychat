Rails.application.routes.draw do
      get 'chat/create'
      post 'chat/store'


      root 'home#index'
    end
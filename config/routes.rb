Rails.application.routes.draw do
  root :to => 'stories#welcome'

  resources :stories do
    resources :sentences, :except => [:index]
  end

  resources :images, :only => [:index] do
    resources :sentences, :only => [:index]
  end

end

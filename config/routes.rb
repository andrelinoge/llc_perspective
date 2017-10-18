Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  scope "(:locale)" do
    root 'welcome#index'
    resource :about, only: :show
    resource :gallery, only: :show

    resources :contacts, only: [:index, :create]
    
    namespace :admin do
      root 'dashboard#index'

      resources :settings, only: [:index, :edit, :update]
    end
  end
end

Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  
   namespace :admin do
    root 'dashboard#index'

    resources :settings, only: [:index, :edit, :update]
  end
end

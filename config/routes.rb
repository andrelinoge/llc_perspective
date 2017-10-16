Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  
   namespace :admin do
    root 'dashboard#index'
  end
end

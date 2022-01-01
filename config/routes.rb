Rails.application.routes.draw do
  devise_for :users
  resources :courses
  root 'static_pages#landing_page'
  get 'static_pages/privacy_policy'
  get '/courses' => "courses#index", :as => :user_root
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

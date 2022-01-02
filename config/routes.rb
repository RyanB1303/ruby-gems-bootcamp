Rails.application.routes.draw do
  devise_for :users
  resources :courses
  get '/members/all' => "members#members", :as => :members
  get '/members' => "members#index", :as => :user_root
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'static_pages/privacy_policy'
  root 'static_pages#landing_page'
end

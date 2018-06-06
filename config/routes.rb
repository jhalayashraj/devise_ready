Rails.application.routes.draw do
  get 'users/index'
  devise_for :users, :controllers => {:registrations => "users"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    root to: "devise/registrations#new"
  end
end

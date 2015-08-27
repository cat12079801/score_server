Rails.application.routes.draw do
  devise_for :users

  root to: "problems#index"

  resources :problems

  scope :admin do
    resources :admin_notifications, :path => 'notifications'
    resources :admin_problems, :path => 'problems'
    resources :admin_genres, :only => [:index, :create, :destroy], :path => 'genres'
  end

  get 'admin/index'
  get 'admin/flag'
  get 'admin/score'
  get 'admin/team'
  post 'admin/team_post'
  get 'notification/index'
  get 'notification/show'
  get 'score/score'
end

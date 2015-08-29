Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'user/sessions',
    registrations: 'user/registrations'
  }

  root to: "problems#index"

  resources :problems

  scope :admin do
    resources :admin_notifications, :path => 'notifications'
    resources :admin_problems, :path => 'problems'
    resources :admin_genres, :only => [:index, :create, :destroy], :path => 'genres'
    resources :admin_teams, :only => [:index, :create], :path => 'teams'
  end

  get 'admin/index'
  get 'admin/flag'
  get 'admin/score'
  get 'notification/index'
  get 'notification/show'
  get 'score', :controller => 'score', :action => 'score'
end

Rails.application.routes.draw do
  devise_for :users
  root to: "problems#index"

  get 'admin/index'

  get 'admin/flag'

  get 'admin/score'

  get 'admin/genre'

  get 'admin/genre_post'

  get 'admin/team'

  get 'admin/team_post'

  get 'notification/index'

  get 'notification/show'

  get 'score/score'
end

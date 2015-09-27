class ScoreController < ApplicationController
  def score
    @users = User.where(admin_flag: false)
  end
end

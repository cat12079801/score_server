class SentFlag < ActiveRecord::Base
  belongs_to :user
  belongs_to :problem

  paginates_per 20
end

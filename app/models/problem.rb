class Problem < ActiveRecord::Base
  belongs_to :user, through: :solve
  has_many :solve
  has_many :sent_flag
  belongs_to :genre
end

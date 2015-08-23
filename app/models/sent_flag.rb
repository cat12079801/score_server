class SentFlag < ActiveRecord::Base
  belongs_to :user
  belongs_to :problem

  validates :flag, presence: true, length: {in: 1..255}
  validates :collect, presence: true
end

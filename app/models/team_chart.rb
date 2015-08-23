class TeamChart < ActiveRecord::Base
  belongs_to :team

  validates :point, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :times, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
end

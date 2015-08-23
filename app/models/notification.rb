class Notification < ActiveRecord::Base
  belongs_to :problem

  validates :title, presence: true, length: {in: 1..255}
  validates :description, presence: true, length: {minimum: 1}
end

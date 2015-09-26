class Problem < ActiveRecord::Base
  has_many :users, through: :solve
  has_many :solve
  has_many :sent_flag
  belongs_to :genre
  belongs_to :user

  validates :title, presence: true, length: {in: 1..255}
  validates :question, presence: true, length: {minimum: 1}
  validates :flag, presence: true, length: {in: 1..255}, format: {with: /\Aflag_/}
  #validates :opened, presence: true
  validates :point, presence: true, numericality: {greater_than_or_equal_to: 0, only_integer: true}
end

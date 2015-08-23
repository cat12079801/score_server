class Genre < ActiveRecord::Base
  has_many :problem

  validates :name, presence: true, uniqueness: true, length: {in: 1..255}
end
